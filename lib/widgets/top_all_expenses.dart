import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/drop_down_widget.dart';

import '../utils/app_styles.dart';

class TopAllExpenses extends StatelessWidget {
  const TopAllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        RangeOptions(),
      ],
    );
  }
}
