import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/pages/sign_in_page.dart';
import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/theming/custom_theme.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.appTheme,
      home: const SignInPage(),
    );
  }
}
