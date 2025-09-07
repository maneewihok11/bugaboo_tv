import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/content_slide.dart';
import 'package:test_bugbaboo/features/screen/new_content_section/data/new_content_data.dart';

class NewContent extends StatelessWidget {
  const NewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentSlide(mockData: NewContentData.mockData,title: 'เนื้อหามาใหม่',viewportFraction: 0.9,isPadding: true,);
  }
}