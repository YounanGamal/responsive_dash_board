// import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/active_and_inactive_all_expenses_item.dart';
// import 'package:responsive_dash_board/models/all_expenses_item_header.dart';

// class AllExpenseItem extends StatelessWidget {
//   const AllExpenseItem({
//     super.key,
//     required this.allExpensesItemModel,
//     required this.isSelected,
//   });
//   final AllExpensesItemModel allExpensesItemModel;
//   final bool isSelected;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child:
//           isSelected
//               ? ActiveAllExpensesItem(
//                 allExpensesItemModel: allExpensesItemModel,
//               )
//               : InActiveAllExpensesItem(
//                 allExpensesItemModel: allExpensesItemModel,
//               ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:responsive_dash_board/models/all_expenses_item_header.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300), // Animation duration
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: ActiveAllExpensesItem(
        allExpensesItemModel: allExpensesItemModel,
      ),
      secondChild: InActiveAllExpensesItem(
        allExpensesItemModel: allExpensesItemModel,
      ),
    );
  }
}
