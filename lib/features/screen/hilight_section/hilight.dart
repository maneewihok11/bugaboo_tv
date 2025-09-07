import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/content_slide.dart';
import 'package:test_bugbaboo/features/screen/hilight_section/data/hilight_data.dart';

class Hilight extends StatelessWidget {
  const Hilight({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentSlide(mockData: MockHilightData.mockData,title: 'ไฮไลต์แนะนำ',autoPlay: true,showPoint: true,);
  }
}