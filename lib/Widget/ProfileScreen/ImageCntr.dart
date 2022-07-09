import 'package:flutter/material.dart';

class CustomCntr extends StatelessWidget {
  const CustomCntr({required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          name,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
