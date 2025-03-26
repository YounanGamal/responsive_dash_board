import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feature/dash_board_desktop_layout/presentation/view/widgets/user_info_list_title.dart';
import 'package:responsive_dash_board/models/user_info_list_title_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const item = [
    UserInfoListTitleModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvatar1,
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoListTitleModel(
      title: 'Josua Nunito',
      image: Assets.imagesAvatar2,
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoListTitleModel(
      title: 'Madrani Andi',
      image: Assets.imagesAvatar3,
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            item
                .map(
                  (e) => IntrinsicWidth(
                    child: UserInfoListTitle(userInfoListTitleModel: e),
                  ),
                )
                .toList(),
      ),
    );

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: item.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTitle(userInfoListTitleModel: item[index]),
    //       );
    //     },
    //   ),
    // );
  }
}
