import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    this.color,
    required this.text,
  });
  final Color backGroundColor;
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(20),
          backgroundColor: backGroundColor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: color ?? Color(0xff4EB7F2),
          ),
        ),
      ),
    );
  }
}
