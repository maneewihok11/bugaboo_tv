import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_bugbaboo/features/screen/home/widget/menu_item.dart';

void openTopDrawer(BuildContext context) {
  double itemWidth = (MediaQuery.of(context).size.width - 2) / 2;
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Drawer",
    barrierColor: Colors.black.withOpacity(0.3),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.topCenter,
        child: Material(
          color: Colors.white,
          child: SizedBox(
            height: MediaQuery.of(context).size.height, // เต็มจอ
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/bugaboo_logo.svg',
                        height: 36,
                      ),
                    ],
                  ),
                  centerTitle: true,
                  actions: [
                    SvgPicture.asset('assets/images/search.svg', height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SvgPicture.asset(
                        'assets/images/person.svg',
                        height: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                Wrap(
                  spacing: 2,
                  runSpacing: 24,
                  children: [
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_tv.svg',
                        title: 'ละคร',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_movie.svg',
                        title: 'หนัง / ซีรีส์',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_book.svg',
                        title: 'ข่าว',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_sport.svg',
                        title: 'กีฬา',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_originals.svg',
                        title: 'ORIGINALS',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_live.svg',
                        title: 'รายการสด',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 34,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_smile.svg',
                        title: 'นักแสดง',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_game.svg',
                        title: 'วาไรตี้',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_shortseries.svg',
                        title: 'Short Series',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_music.svg',
                        title: 'บันเทิง',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_bookmag.svg',
                        title: 'ตรวจสลาก',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_lifestyle.svg',
                        title: 'ไลฟ์สไตล์',
                      ),
                    ),
                    SizedBox(
                      width: itemWidth,
                      height: 30,
                      child: MenuItem(
                        svgIcon: 'assets/images/menu_announce.svg',
                        title: 'อีเวนต์',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1), // เริ่มจากด้านบน
          end: Offset.zero,
        ).animate(anim1),
        child: child,
      );
    },
  );
}