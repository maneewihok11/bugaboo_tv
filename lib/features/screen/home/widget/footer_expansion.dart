import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';

class FooterExpansion extends StatelessWidget {
  const FooterExpansion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: AppText('ละคร', fontSize: 14, color: Colors.grey),
          expandedAlignment: Alignment.centerLeft,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('ละครมาใหม่', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('ไฮไลต์ละคร', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'รวมละครย้อนหลัง',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'เรื่องย่อละคร',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
        ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: AppText('หนัง/ซีรีส์', fontSize: 14, color: Colors.grey),
          expandedAlignment: Alignment.centerLeft,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('ดูหนังฟรี', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('ซีรีส์มาใหม่', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'สารคดี',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'รีวิวหนัง',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
        ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: AppText('ORIGINALS', fontSize: 14, color: Colors.grey),
          expandedAlignment: Alignment.centerLeft,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('ORIGINALS มาใหม่', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('7HD ORIGINALS', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'BUGABOO ORIGINALS',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'ORIGINALS ซีรีส์',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
        ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          title: AppText('วาไรตี้', fontSize: 14, color: Colors.grey),
          expandedAlignment: Alignment.centerLeft,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('รายการใหม่', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText('ที่เที่ยวแนะนำ', fontSize: 14, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'คาเฟ่แนะนำ',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: AppText(
                'เทคโนโลยี',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
