import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/custom_appbar.dart';
import 'package:test_bugbaboo/features/screen/action_section/action.dart';
import 'package:test_bugbaboo/features/screen/categories/categories.dart';
import 'package:test_bugbaboo/features/screen/drama_section/drama.dart';
import 'package:test_bugbaboo/features/screen/hilight_section/hilight.dart';
import 'package:test_bugbaboo/features/screen/home/widget/footer.dart';
import 'package:test_bugbaboo/features/screen/home/widget/recommend_download.dart';
import 'package:test_bugbaboo/features/screen/new_content_section/new_content.dart';
import 'package:test_bugbaboo/features/screen/popular_tags_section/popular_tags.dart';
import 'package:test_bugbaboo/features/screen/series7_section/series7.dart';
import 'package:test_bugbaboo/features/screen/short_series_section/short_series.dart';
import 'package:test_bugbaboo/features/screen/top_10_section.dart/top_10_mov.dart';
import 'package:test_bugbaboo/features/screen/video_section/video_section.dart';
import 'package:test_bugbaboo/features/screen/welcome_section/welcome_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RecommendDownload(),
            VideoSection(),
            WelcomeSection(),
            Categories(),
            Top10Mov(),
            Hilight(),
            PopularTags(),
            NewContent(),
            Series7(),
            Drama(),
            ActionPage(),
            ShortSeries(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
