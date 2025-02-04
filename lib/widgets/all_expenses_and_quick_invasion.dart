import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_section.dart';

class AllExpensesAndQuickInvasion extends StatelessWidget {
  const AllExpensesAndQuickInvasion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesSection(),
        SizedBox(
          height: 24,
        ),
        QuickInvoiceSection(),
      ],
    );
  }
}
