import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/common_widget/movie_list.dart';
import 'package:test_bugbaboo/core/constants/color.dart';
import 'package:test_bugbaboo/features/screen/top_10_section.dart/data/top10_data.dart';

class Top10Mov extends StatelessWidget {
  const Top10Mov({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          Row(
            children: [
              AppText('Top 10 Today', fontSize: 24),
              const SizedBox(width: 12),
              Row(
                children: [
                  AppText(
                    'ดูทั้งหมด',
                    fontSize: 18,
                    color: ColorRes.secondary500,
                  ),
                  Icon(Icons.arrow_forward, color: ColorRes.secondary500),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 360,
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: mockMovieTop10.length,
              itemBuilder: (context, index) {
                final item = mockMovieTop10[index];
                return MovieList(
                  rank: item.id,
                  title: item.title,
                  count: item.views,
                  url: item.imgUrl,
                  textColor: Colors.black,
                  showLabel: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
