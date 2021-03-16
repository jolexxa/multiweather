import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:multiweather/flows/flows.dart';
import 'package:multiweather/widgets/widgets.dart';

class CitySearchView extends StatefulWidget {
  static MaterialPage<void> page() {
    return MaterialPage<void>(child: CitySearchView());
  }

  @override
  _CitySearchViewState createState() => _CitySearchViewState();
}

class _CitySearchViewState extends State<CitySearchView> {
  TextEditingController cityController;

  @override
  void initState() {
    super.initState();
    cityController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final flow = context.flow<CitySelect>();
    return AppView(
      title: Text('🏢 Find a City'),
      leading: BackButton(
        onPressed: () => flow.complete(
          // First page of a flow must provide its own back button, since it
          // has its own navigation stack.
          //
          // Simply cancel the existing flow.
          (citySelectState) => citySelectState.copyWith(
            result: CitySelectResult.canceled,
          ),
        ),
      ),
      child: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: cityController,
                        decoration: InputDecoration(
                          hintText: 'City Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16.0),
                      child: ElevatedButton(
                        child: Text('SEARCH'),
                        onPressed: () {
                          // Update the city portion of the flow, triggering
                          // the next step in the flow.
                          flow.update(
                            (state) => state.copyWith(
                              city: cityController.text,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
