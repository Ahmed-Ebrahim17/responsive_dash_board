import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.styleMedium16(context),
    );
  }
}
