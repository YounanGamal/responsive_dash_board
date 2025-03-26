import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/all_Expenses.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Column(
            children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
          ),
        ),
      ],
    );
  }
}
