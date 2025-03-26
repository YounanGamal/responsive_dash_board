import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/user_info_list_title_model.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.userInfoListTitleModel});
  final UserInfoListTitleModel userInfoListTitleModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoListTitleModel.image),
          title: Text(
            userInfoListTitleModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoListTitleModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
