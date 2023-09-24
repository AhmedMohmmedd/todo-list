
import 'package:flutter/material.dart';

class customThemItem extends StatelessWidget {
  const customThemItem({
    super.key,
    this.onTap,
    required this.color,
  });
  final Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 55,
          width: 55,
          color: color,
        ),
      ),
    );
  }
}