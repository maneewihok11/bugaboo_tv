import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class RecommendDownload extends StatefulWidget {
  const RecommendDownload({super.key});

  @override
  State<RecommendDownload> createState() => _RecommendDownloadState();
}

class _RecommendDownloadState extends State<RecommendDownload> {
  bool isClose = false;
  @override
  Widget build(BuildContext context) {
    return isClose
        ? const SizedBox()
        : Container(
          height: MediaQuery.of(context).size.height / 4,
          padding: EdgeInsets.all(24),
          width: double.infinity,
          color: ColorRes.primary,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AppText(
                      'ดาวน์โหลด BUGABOO.TV ครบจบในแอปเดียว',
                      maxLines: 2,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    color: Colors.white,
                    padding: EdgeInsets.all(4),
                    child: SvgPicture.asset('assets/images/recommend.svg'),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isClose = true;
                      });
                    },
                    iconSize: 32,
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              GridView.count(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 3.5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Image.network(
                    'https://bof-shortseries.bugaboo.tv/images/App-Store-Badge.png',
                  ),
                  Image.network(
                    'https://bof-shortseries.bugaboo.tv/images/Google-Play-Badge.png',
                  ),
                  Image.network(
                    'https://bof-shortseries.bugaboo.tv/images/Huawel-AppGallery-Badge.png',
                  ),
                ],
              ),
            ],
          ),
        );
  }
}
