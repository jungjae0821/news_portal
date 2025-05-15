import 'package:flutter/material.dart';
import 'package:news_portal/presentation/widgets/app_logo.dart';
import 'package:news_portal/presentation/widgets/app_scaffold.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppLogo(),
        ],
      )
    ),);
  }
}
