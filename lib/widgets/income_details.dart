
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_details_item.dart';

import '../models/income_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: "Design service",
      trailing: "40%",
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      trailing: "25%",
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: "Product royalti",
      trailing: "20%",
    ),
    IncomeDetailsModel(
      color: Color(0xffE2DECD),
      title: "Other",
      trailing: "22%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: items
            .map(
              (e) => IncomeDetailsItem(
                incomeDetailsModel: e,
              ),
            )
            .toList());
  }
}
