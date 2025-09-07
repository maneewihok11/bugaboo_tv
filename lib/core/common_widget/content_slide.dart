import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_bugbaboo/core/common_model/content_model.dart';
import 'package:test_bugbaboo/core/common_widget/app_text.dart';
import 'package:test_bugbaboo/core/constants/color.dart';

class ContentSlide extends StatefulWidget {
  final List<ContentModel> mockData;
  final String title;
  final bool autoPlay;
  final bool showPoint;
  final double viewportFraction;
  final bool isPadding;
  const ContentSlide({
    super.key,
    required this.mockData,
    this.autoPlay = false,
    required this.title,
    this.showPoint = false,
    this.viewportFraction = 1.0,
    this.isPadding = false,
  });

  @override
  State<ContentSlide> createState() => _HilightState();
}

class _HilightState extends State<ContentSlide> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: AppText(widget.title, fontSize: 24),
          ),
          Stack(
            children: [
              CarouselSlider(
                items:
                    widget.mockData.map((item) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: widget.isPadding ? 32.0 : 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.network(
                                item.imgUrl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: AppText(item.date, fontSize: 12),
                            ),
                            AppText(item.title, fontSize: 20, maxLines: 2),
                          ],
                        ),
                      );
                    }).toList(),
                options: CarouselOptions(
                  initialPage: _current,
                  autoPlay: widget.autoPlay,
                  viewportFraction: widget.viewportFraction,
                  aspectRatio: 16 / 12,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              // Positioned.fill(
              //   bottom: (16 / 9) + 64,
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 12),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           InkWell(
              //             onTap: () {},
              //             child: Container(
              //               width: 48,
              //               height: 48,
              //               decoration: BoxDecoration(
              //                 color: Colors.grey.shade200,
              //                 shape: BoxShape.circle,
              //               ),
              //               alignment: Alignment.center,
              //               child: Icon(Icons.arrow_back_ios),
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {},
              //             child: Container(
              //               width: 48,
              //               height: 48,
              //               decoration: BoxDecoration(
              //                 color: Colors.grey.shade200,
              //                 shape: BoxShape.circle,
              //               ),
              //               alignment: Alignment.center,
              //               child: Icon(Icons.arrow_forward_ios),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          if (widget.showPoint) const SizedBox(height: 12),
          if (widget.showPoint)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  widget.mockData.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _current = entry.key;
                        });
                      },
                      child: Container(
                        width: _current == entry.key ? 28.0 : 10.0,
                        height: 10.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          color:
                              _current == entry.key
                                  ? ColorRes.secondary500
                                  : Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  }).toList(),
            ),
        ],
      ),
    );
  }
}
