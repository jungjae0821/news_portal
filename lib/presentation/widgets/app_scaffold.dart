
import 'package:flutter/material.dart';

class AppScaffod extends StatelessWidget {
  final Widget child;

  const AppScaffod({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: child));
  }
}
