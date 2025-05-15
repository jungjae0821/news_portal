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
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void onLogin() {

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
          TextField(
            controller: textController,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: AppTrans.login.email.tr(),
            ),
          ),

          ElevatedButton(onPressed: onLogin, child: Text(
            AppTrans.login.login.tr()
            ),
          ),
        ],
      )
    ),);
  }
}
