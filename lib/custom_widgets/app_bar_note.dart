import 'package:flutter/material.dart';

class CustomAppBarNote extends StatelessWidget {
  const CustomAppBarNote({super.key});

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
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 32,
              color: Colors.white.withOpacity(.8),
            ),
          ),
        ),
      ],
    );
  }
}
