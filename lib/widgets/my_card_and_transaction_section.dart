import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/card_item_with_dots_indicator.dart';
import 'package:responsive_dash_board/widgets/custom_bacground_container.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My card",
              style: AppStyles.styleMedium20(context)
                  .copyWith(color: Color(0xff064061)),
            ),
            SizedBox(
              height: 20,
            ),
            CardItemWithDotsIndicator(),
            Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
            TransactionHistory(),
          ],
        ));
  }
}
