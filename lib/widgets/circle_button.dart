import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onpressed;

  const CircleButton(
      {required this.icon, required this.iconSize, required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {
          onpressed();
        },
        icon: Icon(
          icon,
        ),
        iconSize: iconSize,
        color: Colors.black,
      ),
    );
  }
}
