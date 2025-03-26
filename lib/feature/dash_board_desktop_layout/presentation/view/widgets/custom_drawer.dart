import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/active_and_inActive_widgets_item.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/user_info_list_title.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_list_title_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 20),
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTitle(
              userInfoListTitleModel: UserInfoListTitleModel(
                title: 'Lekan Okeowo',
                image: Assets.imagesAvatar1,
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Spacer(),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesSettings,
                    title: 'Setting system',
                  ),
                ),
                const SizedBox(height: 20),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
