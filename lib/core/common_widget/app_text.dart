import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final bool softWrap;
  final int? maxLines;

  const AppText(
    this.label, {
    required this.fontSize,
    this.color = Colors.black,
    this.softWrap = true,
    this.textAlign = TextAlign.start,
    this.maxLines,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: 'SukhumvitSet-SemiBold',
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
