
import 'package:flutter/material.dart';

class AppScaffod extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;

  const AppScaffod({super.key, this.appBar, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar, //
      body: SafeArea(child: child),
    );
  }
}
