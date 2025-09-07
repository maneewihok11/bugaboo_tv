import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class MenuItem extends StatelessWidget {
  final String svgIcon;
  final String title;
  const MenuItem({super.key, required this.svgIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Row(
        children: [
          SvgPicture.asset(svgIcon, height: 24, color: ColorRes.secondary500),
          const SizedBox(width: 12.0,),
          Text(title,style: TextStyle(fontFamily: 'SukhumvitSet-SemiBold'),),
        ],
      ),
    );
  }
}
