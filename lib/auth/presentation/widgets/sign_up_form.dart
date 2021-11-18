import 'package:firebase_auth_with_riverpod_tutorial/auth/presentation/widgets/form_text_input.dart';
import 'package:firebase_auth_with_riverpod_tutorial/core/presentation/validators/form_validators.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FormTextInput(
            label: 'Email',
            icon: Icons.email_rounded,
            validator: FormValidators.emailValidator(),
            controller: _emailController,
          ),
          FormTextInput(
            label: 'Password',
            icon: Icons.lock_outline_rounded,
            secure: true,
            validator: FormValidators.passwordValidator(),
            controller: _passwordController,
          ),
          FormTextInput(
            label: 'Confirm Password',
            icon: Icons.lock_outline_rounded,
            secure: true,
            validator: (val) => FormValidators.passwordMatchValidator()
                .validateMatch(val!, _passwordController.text),
            controller: _confirmPasswordController,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Center(
              child: Text('Create an Account'),
            ),
          )
        ],
      ),
    );
  }
}
