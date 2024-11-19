import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ActionButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor: const Color(0xFF0ACF83), // Verde
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'DMSans',
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.white,
          letterSpacing: 0.20,
        ),
      ),
    );
  }
}
