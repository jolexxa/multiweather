import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  AppView({
    Key key,
    this.leading,
    @required this.child,
    @required this.title,
  }) : super(key: key);

  final Widget leading;
  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: leading,
        title: title,
      ),
      body: child,
    );
  }
}
