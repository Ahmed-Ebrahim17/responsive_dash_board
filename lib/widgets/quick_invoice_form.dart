import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/customer_with_textfield.dart';
import 'package:responsive_dash_board/widgets/two_custom_buttons.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomerNameWithTextField(
              text: "Customer name",
              hint: "Type customer name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomerNameWithTextField(
                text: "Customer Email",
                hint: "Type customer name",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomerNameWithTextField(
              text: "Item name",
              hint: "Type customer name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomerNameWithTextField(
              text: "Item mount",
              hint: "Amount",
            )),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                  text: "Add more details", backGroundColor: Colors.white),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                  color: Colors.white,
                  text: "Send Money",
                  backGroundColor: Color(0xff4EB7F2)),
            ),
          ],
        )
      ],
    );
  }
}
