import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_list_tile_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    super.key,
  });
  static const items = [
    TransactionModel(
        title: "Cash Withdrawal",
        subTitle: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithDrawl: true),
    TransactionModel(
        title: "Landing Page project",
        subTitle: "13 Apr, 2022 at 3:30 PM",
        amount: r"$2,000",
        isWithDrawl: false),
    TransactionModel(
        title: "Juni Mobile App project",
        subTitle: "13 Apr, 2022 at 3:30 PM",
        amount: r"$20,129",
        isWithDrawl: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionListTileItem(transactionModel: e),
          )
          .toList(),
    );
  }
}
