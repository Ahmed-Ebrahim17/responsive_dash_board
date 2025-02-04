import 'package:flutter/material.dart';

import '../models/transaction_model.dart';
import '../utils/app_styles.dart';

class TransactionListTileItem extends StatelessWidget {
  const TransactionListTileItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Color(0xffFAFAFA),
      elevation: 0,
      margin: EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              transactionModel.title,
              style: AppStyles.styleBold16(context)
                  .copyWith(color: Color(0xff064061)),
            ),
          ),
          subtitle: Text(
            transactionModel.subTitle,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithDrawl
                  ? Color(0xffF3735E)
                  : Color(0xff7DD97B),
            ),
          ),
        ),
      ),
      //
    );
  }
}
