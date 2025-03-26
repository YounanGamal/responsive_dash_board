import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/active_and_inActive_widgets_item.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isSelected,
  });
  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
