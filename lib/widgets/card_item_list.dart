import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_expenses_card_item.dart';

import '../models/expnses_card_item.dart';
import '../utils/app_assets.dart';

class CardItemList extends StatefulWidget {
  const CardItemList({super.key});

  @override
  State<CardItemList> createState() => _CardItemListState();
}

class _CardItemListState extends State<CardItemList> {
  final _listCard = const [
    ExpnsesCardItemModel(image: AppAssets.imagesMoneys, title: "Balance"),
    ExpnsesCardItemModel(image: AppAssets.imagesCardReceive, title: "Income"),
    ExpnsesCardItemModel(image: AppAssets.imagesCardSend, title: "Expenses"),
  ];

  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: CustomExpensesCardItem(
                isSelected: activeIndex == 0,
                expnsesCardItemModel: _listCard[0]),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: CustomExpensesCardItem(
                isSelected: activeIndex == 1,
                expnsesCardItemModel: _listCard[1]),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: CustomExpensesCardItem(
                isSelected: activeIndex == 2,
                expnsesCardItemModel: _listCard[2]),
          ),
        ),
      ],
    );
  }

  void updateIndex(index) {
    setState(() {
      activeIndex = index;
    });
  }
}
