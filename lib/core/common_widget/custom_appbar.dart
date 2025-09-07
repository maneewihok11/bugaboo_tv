import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_bugbaboo/core/common_widget/custom_drawer.dart';
import 'package:test_bugbaboo/core/common_widget/dialog_search.dart';

class CustomAppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      leading: IconButton(
        onPressed: () {
          openTopDrawer(context);
        },
        icon: Icon(Icons.menu),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/bugaboo_logo.svg', height: 36),
        ],
      ),
      centerTitle: true,
      actions: [
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: true,
              barrierColor: Colors.transparent,
              builder: (context) => DialogSearch(),
            );
          },
          child: SvgPicture.asset('assets/images/search.svg', height: 24)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SvgPicture.asset('assets/images/person.svg', height: 24),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(color: Colors.grey.shade300, height: 1.0),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
