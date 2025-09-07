import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class PopularTags extends StatelessWidget {
  final List<String> texts = [
    "เติ้ล ธนพล",
    "นักแสดงช่อง 7HD",
    "เข้ม หัสวีร์",
    "ดูละคร",
    "ของทุกเดือน",
    "7 สีคอนเสิร์ต เฟสติวัล",
    "หยก ธัญยกันต์",
    "ดูละครย้อนหลังช่อง7",
    "มิ้นท์ บารมิตา",
    "เรื่องย่อละคร ช่อง7",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText('แท็กยอดนิยม', fontSize: 24),
            const SizedBox(height: 24,),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: texts.map((text) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: AppText(text, fontSize: 14,color: ColorRes.secondary500,)
                );
              }).toList(),),
          ],
        )
    );
  }
}
