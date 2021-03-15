import 'package:flutter/material.dart';
import 'package:multiweather/flows/flows.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiweather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Multiweather'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> Function() _addCity(BuildContext context) {
    return () async {
      // Start the city select flow.
      final citiesSetup = await Navigator.of(context).push(
        CitySelectFlow.route(initialState: CitySelect()),
      );
      // After finishing the flow, check to see how the flow finished
      // and respond/navigate appropriately.
      var message = '';
      switch (citiesSetup.result) {
        case CitySelectResult.canceled:
          message = 'User canceled city selection.';
          break;
        case CitySelectResult.complete:
          message = 'User chose: ${citiesSetup.city}';
          break;
        case CitySelectResult.failed:
          message = 'Picking a city failed.';
          break;
        default:
      }
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(message)));
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Okie doke',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCity(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
