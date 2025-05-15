import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal/app/translations/app_trans.dart';
import 'package:news_portal/presentation/widgets/app_logo.dart';
import 'package:news_portal/presentation/widgets/app_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void onLogin() {
    final email = _emailController.text;

    debugPrint('이메일: $email');
    }
  @override
  Widget build(BuildContext context) {
    return AppScaffold(child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppLogo(),
          Container(
            height: 250,
            alignment: Alignment.center,
            child: Text(
              AppTrans.login.welcome.tr(),
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _textField(),

          ElevatedButton(onPressed: onLogin, child: Text(
            AppTrans.login.login.tr()
            ),
          ),
        ],
      )
    ),);
  }

  TextField _textField({
    required TextEditingController controller, required String hintText,
  }) {
    return TextField(
          controller: _emailController,
          decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          ),
        );
  }
}
