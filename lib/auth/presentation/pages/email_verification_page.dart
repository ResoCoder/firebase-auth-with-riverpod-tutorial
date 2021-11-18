import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/bottom_text_link.dart';
import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/widgets/logo_image.dart';
import 'package:flutter/material.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoImage(),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Please verify your email',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 20),
                const Text(
                  'We\'ve sent you an email, click on the email link to verify your account.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Already verified your email? Continue to your account.',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text('Continue'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BottomTextLink(
                  text: 'Still don\'t see the email?',
                  link: 'Resend email.',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
