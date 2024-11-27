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
        padding: const EdgeInsets.only(left: 24), 
        splashRadius: 1, 
        highlightColor: Colors.transparent, 
        hoverColor: Colors.transparent, 
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'DMSans', 
          fontSize: 16,         
          fontWeight: FontWeight.bold, 
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: IconButton(
            icon: Icon(rightIcon, color: Colors.black),
            onPressed: onRightIconPressed,
            splashRadius: 1, 
            highlightColor: Colors.transparent, 
            hoverColor: Colors.transparent, 
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
