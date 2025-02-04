import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/pie_chart_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 120 / 120,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  num activeIndex = -1;
  static const items = [
    PieChartModel(
      value: 40,
      color: Color(0xff208CC8),
    ),
    PieChartModel(
      value: 25,
      color: Color(0xff4EB7F2),
    ),
    PieChartModel(
      value: 20,
      color: Color(0xff064061),
    ),
    PieChartModel(
      value: 22,
      color: Color(0xffE2DECD),
    ),
  ];

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieChartResponse) {
          setState(() {
            activeIndex =
                pieChartResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: List.generate(items.length, (index) {
        return PieChartSectionData(
          value: items[index].value,
          color: items[index].color,
          radius: activeIndex == index ? 60 : 50,
          showTitle: false,
        );
      }),
    );
  }
}
