import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';
import 'package:test_bugbaboo/features/screen/video_section/widget/streaming.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Streaming(),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorRes.secondary500),
                ),
                child: Image.network(
                  'https://bof-shortseries.bugaboo.tv/images/ch7-logo.png',
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 80,
                  child: Image.network(
                    'https://static.bugaboo.tv/images/spa/hot-news.png',
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Expanded(child: AppText('รายการช่อง 7HD', fontSize: 16)),
              Row(
                children: [
                  AppText(
                    'ดูรายการสด',
                    fontSize: 16,
                    color: ColorRes.secondary500,
                  ),
                  Icon(Icons.arrow_forward, color: ColorRes.secondary500),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
