import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400), // Animation duration
      transitionBuilder: (Widget child, Animation<double> animation) {
        // Combine fade and scale transitions
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.8, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut, // Smooth easing curve
              ),
            ),
            child: child,
          ),
        );
      },
      child: isActive
          ? ActiveDrawerItem(
              key: ValueKey<bool>(isActive), // Unique key for animation
              drawerItemModel: drawerItemModel,
            )
          : InActiveDrawerItem(
              key: ValueKey<bool>(isActive), // Unique key for animation
              drawerItemModel: drawerItemModel,
            ),
    );
  }
}
