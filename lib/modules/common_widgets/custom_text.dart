import 'package:flutter/material.dart';
import 'package:my_flat_finder/until/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextOverflow? overflow;

  const CustomText({
    super.key,
    required this.text,
    this.fontWeight,
    this.color,
    this.overflow,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color ?? AppColor.primaryTextColor,
        overflow: overflow ?? TextOverflow.fade,
      ),
    );
  }
}
