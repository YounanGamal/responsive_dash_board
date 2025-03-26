import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenseItemHeader extends StatelessWidget {
  const AllExpenseItemHeader({
    super.key,
    required this.image,
    required this.backgroundColor,
    required this.imageColor,
    required this.iconColor,
  });
  final String image;
  final Color backgroundColor;
  final Color imageColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backgroundColor,
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
          ),
        ),
        Icon(Icons.arrow_forward_ios, color: iconColor),
      ],
    );
  }
}
