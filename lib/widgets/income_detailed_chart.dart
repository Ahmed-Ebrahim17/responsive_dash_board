import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../models/pie_detailed_chart.dart';

class IncomeDetailedChart extends StatefulWidget {
  const IncomeDetailedChart({super.key});

  @override
  State<IncomeDetailedChart> createState() => _IncomeDetailedChartState();
}

class _IncomeDetailedChartState extends State<IncomeDetailedChart> {
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
    PieDetailedChartModel(
      title: "Design service",
      value: 40,
      offest: 1.6,
      percntage: "40%",
      color: Color(0xff208CC8),
    ),
    PieDetailedChartModel(
      percntage: "25%",
      title: "Design product",
      value: 25,
      offest: 2.2,
      color: Color(0xff4EB7F2),
    ),
    PieDetailedChartModel(
      percntage: "20%",
      title: "Product royalti",
      value: 20,
      offest: 1.5,
      color: Color(0xff064061),
    ),
    PieDetailedChartModel(
      percntage: "22%",
      value: 22,
      offest: 1.5,
      title: "Other",
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
          titlePositionPercentageOffset:
              activeIndex == index ? items[index].offest : 0.5,
          title: activeIndex == index
              ? items[index].title
              : items[index].percntage,
          value: items[index].value,
          color: items[index].color,
          radius: activeIndex == index ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == index ? Color(0xff064061) : Colors.white,
          ),
        );
      }),
    );
  }
}
