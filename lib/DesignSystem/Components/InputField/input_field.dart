import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final Widget icon;

  const InputField({
    Key? key,
    required this.hintText,
    required this.icon, required TextEditingController controller, required Null Function() onTap, required bool readOnly, required Null Function(dynamic value) onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Color(0xFFBABABA),
        fontSize: 14,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w400,
        height: 0.10,
        letterSpacing: 0.20,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'DMSans',
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Color(0xFFBABABA), // Cinza
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0), // Padding do ícone
          child: icon,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFBABABA)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
        // Adicionando o fundo branco
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}