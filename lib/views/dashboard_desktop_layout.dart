import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import '../widgets/all_expenses_and_quick_invasion.dart';
import '../widgets/income_section.dart';
import '../widgets/my_card_and_transaction_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: AllExpensesAndQuickInvasion(),
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            MyCardAndTransactionSection(),
                            SizedBox(
                              height: 24,
                            ),
                            IncomeSection(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
