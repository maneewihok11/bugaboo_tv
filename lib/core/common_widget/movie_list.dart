import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class MovieList extends StatelessWidget {
  final int rank;
  final String title;
  final int count;
  final String url;
  final Color textColor;
  final String tag;
  final bool tagPrimary;
  final bool showLabel;
  const MovieList({
    super.key,
    required this.rank,
    required this.title,
    required this.count,
    required this.url,
    required this.textColor,
    this.showLabel = false,
    this.tag = '',this.tagPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: Image.network(fit: BoxFit.cover, url),
                  ),
                ),
                if(showLabel)
                Stack(
                  children: [
                    Positioned(
                      child: SvgPicture.asset(
                        'assets/images/label_top10.svg',
                        height: 48,
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: AppText(
                          rank.toString(),
                          fontSize: 18,
                          color: Colors.white,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          if(tag != '')
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              color: tagPrimary ? ColorRes.primary : Colors.purple.shade50,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: ColorRes.secondary500)
            ),
            child: AppText(tag, fontSize: 12, color: ColorRes.secondary500),
          ),
          SizedBox(
            width: 160,
            child: AppText(title, fontSize: 16, color: textColor,maxLines: 2,)),
          if(count > 0)
          AppText('$count ตอน', fontSize: 12, color: textColor),
        ],
      ),
    );
  }
}
