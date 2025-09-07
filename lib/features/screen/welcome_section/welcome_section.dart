import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          AppText('ยินดีต้อนรับสู้ BUGABOO.TV', fontSize: 24),
          const SizedBox(height: 12),
          AppText('เนื้อหาแนะนำสำหรับคุณ', fontSize: 18),
          const SizedBox(height: 12),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 12),
              children: [
                buildBanner(
                  'ดูวาไรตี้',
                  'ONE ลุมพินี',
                  'https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW1hZ2VzLzIwMjUvMy8xNi9pbWdfMTc0MjEwODg2NDM3N19zcGd0emx1N24uanBlZyJ9',
                ),
                buildBanner(
                  'ดูละคร',
                  'คุณแม่แก้ขัด',
                  'https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo2MDAsImhlaWdodCI6MzM3LCJmaXQiOiJpbnNpZGUifX0sImtleSI6ImltYWdlcy8yMDI1LzUvMTkvaW1nXzE3NDc2NDM0NDQ2NTlfdjYwOHRiZHdyLmpwZWcifQ==',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBanner(String type, String title, String url) {
    return SizedBox(
      width: 260,
      height: 140,
      child: Stack(
        children: [
          Image.network(url, fit: BoxFit.cover),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.transparent,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.purple.shade50,
              borderRadius: BorderRadius.circular(6),
            ),
            child: AppText(type, fontSize: 14, color: ColorRes.secondary500),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: AppText(title, fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
