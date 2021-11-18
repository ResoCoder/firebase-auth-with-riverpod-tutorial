import 'package:flutter/material.dart';

class BottomTextLink extends StatelessWidget {
  final String text;
  final String link;
  final void Function() onPressed;
  const BottomTextLink(
      {Key? key,
      required this.text,
      required this.link,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white70,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(width: 2),
        TextButton(
          onPressed: onPressed,
          child: Text(link),
        ),
      ],
    );
  }
}
