import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
  });
  final String title, image, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subTitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
