import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

import '../utils/app_styles.dart';

class CustomerNameWithTextField extends StatelessWidget {
  const CustomerNameWithTextField({
    super.key,
    required this.text,
    required this.hint,
  });
  final String text, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
