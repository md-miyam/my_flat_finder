import 'package:flutter/material.dart';
import 'package:my_flat_finder/until/icon_path.dart';
import '../../../until/app_colors.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  const CustomTextField({
    super.key, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.myWhite,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              IconPath.searchIcon,
              height: 20,
            ),
            SizedBox(width: 12),
            Expanded(
              child: TextField(
                cursorColor: AppColor.myBlack,
                cursorWidth: 1.5,
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Color(0xFFa2a7af),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),

            // SizedBox(width: 120,child: MyDropDown())
          ],
        ),
      ),
    );
  }
}
