import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CustomDotIndicator(
            isActive: currentIndex == index,
          ),
        );
      }).toList(),
    );
  }
}
