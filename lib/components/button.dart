import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Color btnbg;
  final String title;
  final Color titleColor;
  final VoidCallback onPress;
  const Button(
      {super.key,
      required this.btnbg,
      required this.title,
      required this.titleColor,
      required this.onPress});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: OutlinedButton(
          onPressed: widget.onPress,
          style: OutlinedButton.styleFrom(
              fixedSize: const Size(80, 80),
              shape: const CircleBorder(),
              backgroundColor: widget.btnbg,
              foregroundColor: Colors.white),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                  color: widget.titleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
