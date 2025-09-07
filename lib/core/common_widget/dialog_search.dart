import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class DialogSearch extends StatefulWidget {
  const DialogSearch({super.key});

  @override
  State<DialogSearch> createState() => _DialogSearchState();
}

class _DialogSearchState extends State<DialogSearch> {
  final TextEditingController controller = TextEditingController();
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

    final List<String> imgList = [
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW1hZ2VzLzIwMjUvNy8yMi9pbWdfMTc1MzE3MDMyMjc4MF9ib3lhYTlvMS5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNi8xNzQwNTY3NDczMzMwLTAyNDNkYWNjLWI0NDktNDc3My1iY2I0LTQ4YzU2NDgyMGRjMDkxMjA0NTAxNjgxNzAwNzcwMDUtbC5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNi8xNzQwNTU3MjA3MjA5LTA0OTYzY2E0LTNiOTEtNGZlNy1iMGJkLWU3NTU0NzM0MjhkNzcxNTc5NjY1MTgxNDA3NDIwNzMtbC5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNi8xNzQwNTgzNDYyNjQ5LWYxNGEzYzNmLWM5MjQtNGM1NS1hZjE5LWE4Yjg2OGIwYmMwNzcyMjQ3NzU2ODMzNzIwODM0NjUtbC5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNy8xNzQwNTkxODMxNDIyLTZhYmU5MzBjLTUxMzAtNGVjMy1hMjc4LTZmODViNzM3NDMzZjU3NzQ0NzI0NzcyMDk0NTQ0NDktbC5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW1hZ2VzLzIwMjUvMy8zMS9pbWdfMTc0MzM5NzgzMTQ2M18zemhkMnljN2suanBlZyJ9",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNi8xNzQwNTY1NDI5MzMxLTU0NzRjMzRkLTc4NTAtNDkwYy1iMWU2LTRlZTc1NWJjNzdhNzQ2OTIxNjcxMzc3MTk0MjI2NDAtbC5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW1hZ2VzLzIwMjUvNC85L2ltZ18xNzQ0MTg2NDYwMDEwX3gyanB6dXRtNS5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNi8xNzQwNTU1NjU3MzA2LTBlMDYzODJmLTU3ZmUtNDEzYy1hYmFiLTBkYmNmY2YwOTNjZjQ3MjA5Mjk3MjIzMTEzNDgxMDgtbC5qcGVnIn0=",
    "https://image-sapp-prod.bugaboo.tv/eyJidWNrZXQiOiJzdXBlcmFwcC1wcm9kLWltYWdlIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxMDAwLCJoZWlnaHQiOjEwMDAsImZpdCI6Imluc2lkZSJ9fSwia2V5IjoiaW50ZXItZHJhbWEvZHJhbWEvMjAyNS8wMi8yNy8xNzQwNTkwNjA0NzY4LTJiOWM4YTRlLWNjMjUtNDM2My1iOTAyLTQ1YmMyZjY3ZWFhZjU3ODMzODk2MDQ4OTY5NDYwNjMtbC5qcGVnIn0=",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.black.withOpacity(0.5), // overlay ดำโปร่ง + blur
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, size: 28, color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Material(
                      color: Colors.transparent, // ถ้าอยากให้โปร่ง
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.blueAccent, Colors.purpleAccent],
                        ),
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: AppText(
                  'แท็กยอดนิยม',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  padding: EdgeInsets.all(16),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: texts.length,
                  itemBuilder: (context, index) {
                    final item = texts[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: AppText(
                        item,
                        fontSize: 14,
                        color: ColorRes.secondary500,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: AppText(
                  'จัดอันดับละครยอดนิยม',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // ✅ 2 columns
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    childAspectRatio: 9 / 16, // ✅ สัดส่วน 9:16
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(imgList[index], fit: BoxFit.cover),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
