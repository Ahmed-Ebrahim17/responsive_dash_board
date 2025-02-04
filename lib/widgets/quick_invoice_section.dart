import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_bacground_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_section.dart';
import 'package:responsive_dash_board/widgets/quick_head.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvasionHead(),
          SizedBox(
            height: 24,
          ),
          LatestTransactionWidget(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
