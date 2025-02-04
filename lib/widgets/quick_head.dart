import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvasionHead extends StatelessWidget {
  const QuickInvasionHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(
              0xffFAFAFA,
            ),
          ),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
