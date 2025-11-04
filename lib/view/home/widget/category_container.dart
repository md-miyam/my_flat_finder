import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String iconImage;
  final String title;
  final Color titleColor;
  final Color iconColor;
  final Color containerColor;
  final void Function()? onTap;

  const CategoryContainer({
    super.key,
    required this.iconImage,
    required this.title,
    required this.titleColor,
    required this.iconColor,
    this.onTap,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext contexSt) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(iconImage, height: 20, color: iconColor),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
