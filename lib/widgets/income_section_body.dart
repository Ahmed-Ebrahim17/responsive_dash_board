import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_detailed_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return width > 1200 && width < 1485
        ? Padding(
            padding: const EdgeInsets.all(28),
            child: IncomeDetailedChart(),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: IncomeDetails(),
                  )),
            ],
          );
  }
}
