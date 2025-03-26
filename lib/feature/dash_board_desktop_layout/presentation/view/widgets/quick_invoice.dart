import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          const QuickInvoiceHeader(),
          const LatestTransaction(),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          Text('Customer name', style: AppStyles.styleMedium16(context)),
          const CustomTextField(hintText: 'Type customer name'),
        ],
      ),
    );
  }
}
