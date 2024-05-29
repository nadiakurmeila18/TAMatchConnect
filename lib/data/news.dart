import 'package:flutter/material.dart';

class news extends StatelessWidget {
  final String PosterPath;
  final String name;

  const news({
    required this.PosterPath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            PosterPath,
            width: 250,
            height: 150,
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}