import 'package:flutter/material.dart';

class CustomAppBarNote extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  const CustomAppBarNote(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Note',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(.8),
          ),
        ),
        Container(
          width: 47.0,
          height: 47.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withOpacity(.05),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 32,
              color: Colors.white.withOpacity(.8),
            ),
          ),
        ),
      ],
    );
  }
}
