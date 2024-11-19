import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData leftIcon;
  final IconData rightIcon;
  final VoidCallback onLeftIconPressed;
  final VoidCallback onRightIconPressed;

  const TitlePage({
    Key? key,
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    required this.onLeftIconPressed,
    required this.onRightIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(leftIcon, color: Colors.black),
        onPressed: onLeftIconPressed,
        padding: const EdgeInsets.only(left: 24), // Padding lateral
        splashRadius: 1, // Remove o efeito splash visual
        highlightColor: Colors.transparent, // Remove o efeito de destaque ao clicar
        hoverColor: Colors.transparent, // Remove o efeito ao passar o mouse
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'DMSans', // Fonte DM Sans
          fontSize: 16,         // Tamanho do texto
          fontWeight: FontWeight.bold, // Texto em Bold
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24), // Padding lateral
          child: IconButton(
            icon: Icon(rightIcon, color: Colors.black),
            onPressed: onRightIconPressed,
            splashRadius: 1, // Remove o efeito splash visual
            highlightColor: Colors.transparent, // Remove o efeito de destaque ao clicar
            hoverColor: Colors.transparent, // Remove o efeito ao passar o mouse
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
