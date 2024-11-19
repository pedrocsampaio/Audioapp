import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final Widget icon; // Agora aceita qualquer Widget como ícone
  final VoidCallback onPressed;

  const FilterButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        side: const BorderSide(
          color: Colors.grey, // Cor da borda
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        elevation: 0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon, // Ícone agora é um Widget flexível
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
