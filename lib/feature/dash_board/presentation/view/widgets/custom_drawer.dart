import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/drawer_item.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/user_info_list_title.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 28, right: 20),
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTitle(
            title: 'Lekan Okeowo',
            image: Assets.imagesAvatar1,
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(height: 28),
          ListView(
            shrinkWrap: true,
            children:
                drawerItems.map((e) => DrawerItem(drawerItemModel: e)).toList(),
          ),
        ],
      ),
    );
  }
}
