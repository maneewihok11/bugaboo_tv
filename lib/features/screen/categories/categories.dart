import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 48,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 24),
              children: [
                buildMenu('BUGABOO SHOP',Icon(Icons.shopping_bag_outlined,color: Colors.white,)),
                buildMenu('ละครมาใหม่',Icon(Icons.movie_creation_outlined,color: Colors.white,)),
                buildMenu('สมัครพรีเมี่ยม',Icon(Icons.emoji_events,color: Colors.white,)),
                buildMenu('กีฬาสด',Icon(Icons.sports_soccer_outlined,color: Colors.white,)),
                buildMenu('หาทีี่ท่องเที่ยว',Icon(Icons.airplanemode_active,color: Colors.white,)),
                buildMenu('หาทีี่ท่องเที่ยว',Icon(Icons.local_movies_outlined,color: Colors.white,)),
              ],
            ),
          ),
        ),
      ],
    );
  }

Widget buildMenu(String title, Icon icon) {
  return Container(
    width: 100,
    margin: const EdgeInsets.only(right: 12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: icon
        ),
        SizedBox(height: 8),
        AppText(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          fontSize: 16,
        ),
      ],
    ),
  );
}

}
