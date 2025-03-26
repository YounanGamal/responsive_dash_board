import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/drawer_item.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int selectedDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder:
          (context, index) => InkWell(
            onTap: () {
              if (selectedDrawerIndex != index) {
                setState(() {
                  selectedDrawerIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: drawerItems[index],
                isSelected: selectedDrawerIndex == index,
              ),
            ),
          ),
    );
  }
}
