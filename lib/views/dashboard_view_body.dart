import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';

import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => DashBoardMobileLayout(),
      tabletLayout: (context) => DashboardTabletLayout(),
      desktopLayout: (context) => DashboardDesktopLayout(),
    );
  }
}
