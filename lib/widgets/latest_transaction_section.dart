import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_quick_item_listview.dart';

import '../utils/app_styles.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}
