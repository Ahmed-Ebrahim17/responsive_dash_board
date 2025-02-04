import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/expenses_card_item_body.dart';

import '../models/expnses_card_item.dart';

class CustomExpensesCardItem extends StatelessWidget {
  const CustomExpensesCardItem({
    super.key,
    required this.expnsesCardItemModel,
    required this.isSelected,
  });
  final ExpnsesCardItemModel expnsesCardItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff4EB7F2) : Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Color(0xffF1F1F1),
        ),
      ),
      child: ExpensesCardItemBody(
        isSelected: isSelected,
        expnsesCardItemModel: expnsesCardItemModel,
      ),
    );
  }
}
