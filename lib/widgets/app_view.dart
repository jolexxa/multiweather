import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  AppView({Key key, this.leading, @required this.child}) : super(key: key);

  final Widget leading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          leading: leading,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: FractionallySizedBox(
              widthFactor: 0.45,
              child: Text(
                '↪',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
      body: child,
    );
  }
}
