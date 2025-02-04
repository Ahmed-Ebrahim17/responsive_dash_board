import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/inactive_and_active_expenses_card_item.dart';
import '../models/expnses_card_item.dart';

class ExpensesCardItemBody extends StatelessWidget {
  const ExpensesCardItemBody({
    super.key,
    required this.expnsesCardItemModel,
    required this.isSelected,
  });

  final ExpnsesCardItemModel expnsesCardItemModel;
  final bool isSelected;

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
      child: isSelected
          ? ActiveExpensesCardItem(
              key: ValueKey<bool>(isSelected), // Unique key for animation
              isSelected: isSelected,
              expnsesCardItemModel: expnsesCardItemModel,
            )
          : InActiveExpensesCardItem(
              key: ValueKey<bool>(isSelected), // Unique key for animation
              isSelected: isSelected,
              expnsesCardItemModel: expnsesCardItemModel,
            ),
    );
  }
}
