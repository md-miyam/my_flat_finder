import 'package:flutter/material.dart';
import '../../../until/app_colors.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final double? firstTextFontSize;
  final FontWeight? firstTextFontWeight;
  final Color? firstTextColor;
  final String secondText;
  final double? secondTextFontSize;
  final FontWeight? secondTextFontWeight;
  final Color? secondTextColor;

  const CustomRichText({
    super.key,
    required this.firstText,
    this.firstTextFontSize,
    this.firstTextFontWeight,
    this.firstTextColor,
    required this.secondText,
    this.secondTextFontSize,
    this.secondTextFontWeight,
    this.secondTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$firstText ',
            style: TextStyle(
              fontSize: firstTextFontSize ?? 22,
              fontWeight: firstTextFontWeight ?? FontWeight.w400,
              color: firstTextColor ?? AppColor.primaryTextColor,
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(
              fontSize: secondTextFontSize ?? 22,
              fontWeight: secondTextFontWeight ?? FontWeight.w800,
              color: secondTextColor ?? AppColor.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
