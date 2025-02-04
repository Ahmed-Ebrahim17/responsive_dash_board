import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/card_item_list.dart';
import 'package:responsive_dash_board/widgets/custom_bacground_container.dart';
import 'package:responsive_dash_board/widgets/top_all_expenses.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          TopAllExpenses(),
          SizedBox(
            height: 16,
          ),
          CardItemList(),
        ],
      ),
    );
  }
}
