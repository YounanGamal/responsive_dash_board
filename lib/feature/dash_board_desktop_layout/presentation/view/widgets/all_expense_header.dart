import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/Custom_drop_down.dart';

class AllExpenseHeader extends StatelessWidget {
  const AllExpenseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        const CustomDropdown(),
      ],
    );
  }
}
