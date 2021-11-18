import 'package:flutter/material.dart';

class EmailIconButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const EmailIconButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.email),
          const SizedBox(width: 15),
          Text(text),
        ],
      ),
    );
  }
}
