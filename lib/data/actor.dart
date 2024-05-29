import 'package:flutter/material.dart';

class Actor extends StatelessWidget {
  final String imagePath;

  const Actor({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 50,
          ),
        ),
     ],
);
}
}
