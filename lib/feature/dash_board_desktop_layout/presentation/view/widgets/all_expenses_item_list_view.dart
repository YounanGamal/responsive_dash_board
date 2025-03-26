import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/all_expense_item.dart';
import 'package:responsive_dash_board/models/all_expenses_item_header.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int indexSelected = 0;
  final item = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      amount: r'$20,129',
      date: 'April 2022',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      amount: r'$20,129',
      date: 'April 2022',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      amount: r'$20,129',
      date: 'April 2022',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          item.asMap().entries.map((e) {
            int index = e.key;
            return Expanded(
              child: InkWell(
                onTap: () {
                  upDateIndex(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: index == 1 ? 12 : 0,
                  ),
                  child: AllExpenseItem(
                    allExpensesItemModel: e.value,
                    isSelected: indexSelected == index,
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }

  void upDateIndex(int index) {
    if (indexSelected != index) {
      indexSelected = index;
      setState(() {});
    }
  }
}
