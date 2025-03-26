import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/all_expense_header.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/all_expenses_item_list_view.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpenseHeader(),
          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
