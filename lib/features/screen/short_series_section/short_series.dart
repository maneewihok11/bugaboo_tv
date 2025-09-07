import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/common_widget/movie_list.dart';
import 'package:test_bugbaboo/core/constants/color.dart';
import 'package:test_bugbaboo/features/screen/short_series_section/data/short_series_data.dart';

class ShortSeries extends StatelessWidget {
  const ShortSeries({super.key});

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Stack(
        children: [
          Positioned.fill(
            child: Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Image.network(
                    'https://superapp-dev-image.s3.ap-southeast-1.amazonaws.com/mock/hightlight_shortseries.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter, 
                      colors: [
                        Colors.black.withOpacity(0.25),
                        ColorRes.primary.withOpacity(0.85),
                        // ColorRes.primary.withOpacity(0.85),
                        // ColorRes.primary.withOpacity(0.90),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 48),
                Row(
                  children: [
                    AppText('Short Series', fontSize: 24,color: Colors.white,),
                    const SizedBox(width: 12),
                    Row(
                      children: [
                        AppText(
                          'ดูทั้งหมด',
                          fontSize: 18,
                          color: Colors.purple.shade100,
                        ),
                        Icon(Icons.arrow_forward, color: Colors.purple.shade100),
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
                    itemCount: mockShortSeriesData.length,
                    itemBuilder: (context, index) {
                      final item = mockShortSeriesData[index];
                      return MovieList(
                        rank: item.id,
                        title: item.title,
                        count: item.views,
                        url: item.imgUrl,
                        textColor: Colors.white,
                        tag: item.tag,
                        tagPrimary: true,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
