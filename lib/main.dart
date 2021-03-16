import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:multiweather/flows/flows.dart';

import 'app/locator.dart';

void main() {
  setupDependencies();
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
  /// Trigger the city select flow
  Future<void> Function() _addCity(BuildContext context) {
    return () async {
      final citySelectFlowController = FlowController<CitySelect>(CitySelect());
      citySelectFlowController.addListener(() {
        print('Flow changed: ${citySelectFlowController.state}');
      });
      // Start the city select flow.
      final citySelect = await Navigator.of(context).push(
        CitySelectFlow.route(controller: citySelectFlowController),
      );
      // After finishing the flow, check to see how the flow finished
      // and respond/navigate appropriately.
      var message = '';
      switch (citySelect.result) {
        case CitySelectResult.canceled:
          message = 'User canceled city selection.';
          break;
        case CitySelectResult.complete:
          message = 'User chose: ${citySelect.selectedLocation.title}';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap the + button to get started',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ],
          ),
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
