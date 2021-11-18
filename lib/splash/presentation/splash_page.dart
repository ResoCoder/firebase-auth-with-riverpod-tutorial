import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/widgets/logo_image.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LogoImage(),
      ),
    );
  }
}
