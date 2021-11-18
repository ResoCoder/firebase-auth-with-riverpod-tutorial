import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/bottom_text_link.dart';
import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/google_sign_in_button.dart';
import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/sign_up_form.dart';
import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/widgets/logo_image.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  const SizedBox(height: 20),
                  Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 40),
                  const SignUpForm(),
                  const SizedBox(height: 5),
                  const GoogleSignInButton(),
                  const SizedBox(height: 5),
                  BottomTextLink(
                    text: 'Already have an account?',
                    link: 'Sign in now.',
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
