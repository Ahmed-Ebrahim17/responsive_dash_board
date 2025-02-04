import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context)
                  .copyWith(shadows: [Shadow()]),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Color(0xff4EB7F2)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(
          height: 16,
        ),
        TransactionListView(),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
