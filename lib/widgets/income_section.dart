import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_bacground_container.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';
import 'package:responsive_dash_board/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
