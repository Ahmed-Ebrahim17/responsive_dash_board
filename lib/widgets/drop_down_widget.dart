import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_styles.dart';

class RangeOptions extends StatefulWidget {
  const RangeOptions({
    super.key,
  });

  @override
  State<RangeOptions> createState() => _RangeOptionsState();
}

class _RangeOptionsState extends State<RangeOptions> {
  // List of items for the dropdown menu
  final List<String> items = [
    'Monthly',
    'Weekly',
    'Yearly',
  ];

  // Variable to hold the selected value
  String selectedValue = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        onChanged: (String? newValue) {
          // Update the state when a new value is selected
          setState(() {
            selectedValue = newValue!;
          });
          // You can add additional logic here, like triggering a callback
        },
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppStyles.styleMedium16(context),
            ),
          );
        }).toList(),
        // Hide the default underline
        underline: Container(),
        // Add space between the text and the icon
        icon: Padding(
          padding: const EdgeInsets.only(left: 18), // Space of 18 pixels
          child: SvgPicture.asset(
            AppAssets.imagesArrowDown,
            width: 24,
            height: 24,
          ),
        ),
        // Ensure the dropdown takes full width
        // Apply the same text style
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
