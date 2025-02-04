import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Container(
        height: 8,
        width: isActive ? 38 : 8,
        decoration: BoxDecoration(
          color: isActive ? Color(0xff4EB7F2) : Color(0xffE8E8E8),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
