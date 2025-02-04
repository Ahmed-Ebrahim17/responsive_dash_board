import 'package:flutter/material.dart';

class PieDetailedChartModel {
  final double value;
  final double offest;

  final Color color;
  final String percntage;
  final String title;

  const PieDetailedChartModel(
      {required this.value,
      required this.color,
      required this.percntage,
      required this.offest,
      required this.title});
}
