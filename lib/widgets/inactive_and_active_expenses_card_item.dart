import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/top_expenses_card_item.dart';

import '../models/expnses_card_item.dart';
import '../utils/app_styles.dart';

class InActiveExpensesCardItem extends StatelessWidget {
  const InActiveExpensesCardItem({
    super.key,
    required this.expnsesCardItemModel,
    required this.isSelected,
  });

  final ExpnsesCardItemModel expnsesCardItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopExpensesCardItem(image: expnsesCardItemModel.image),
        SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            expnsesCardItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "April 2022",
            style: AppStyles.styleRegular14(context),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "\$20,129",
            style: AppStyles.styleSemiBold24(context),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}

class ActiveExpensesCardItem extends StatelessWidget {
  const ActiveExpensesCardItem({
    super.key,
    required this.expnsesCardItemModel,
    required this.isSelected,
  });

  final ExpnsesCardItemModel expnsesCardItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopExpensesCardItem(
            backGroundColor:
                Colors.white.withValues(alpha: 0.10000000149011612),
            colorImage: Colors.white,
            image: expnsesCardItemModel.image),
        SizedBox(
          height: 34,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(expnsesCardItemModel.title,
              style: AppStyles.styleSemiBoldWhite16(context)),
        ),
        SizedBox(
          height: 8,
        ),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("April 2022",
                style: AppStyles.styleRegularWhite14(context))),
        SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "\$20,129",
            style: AppStyles.styleSemiBoldWhite24(context),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
