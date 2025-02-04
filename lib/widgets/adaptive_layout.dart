import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sizes_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constriants) {
      if (constriants.maxWidth < SizesConfig.mobile) {
        return mobileLayout(context);
      } else if (constriants.maxWidth > SizesConfig.tablet) {
        return desktopLayout(context);
      }
      return tabletLayout(context);
    });
  }
}
