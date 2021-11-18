import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/bottom_text_link.dart';
import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/google_sign_in_button.dart';
import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/sign_in_form.dart';
import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/widgets/logo_image.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LogoImage(),
                  const SizedBox(height: 30),
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 40),
                  const SignInForm(),
                  const GoogleSignInButton(),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot your password?',
                    ),
                  ),
                  BottomTextLink(
                    text: 'Don\'t have an account?',
                    link: 'Create one now.',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
