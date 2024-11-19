import 'package:flutter/material.dart';

class ActionButtonWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isEnabled;

  const ActionButtonWithIcon({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? const Color(0xFF0ACF83) : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'DM Sans', // Fonte DM Sans
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8), // Espaço entre o texto e o ícone
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
