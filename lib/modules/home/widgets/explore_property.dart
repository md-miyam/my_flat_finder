import 'package:flutter/material.dart';

import '../../../until/app_colors.dart';
import '../../../until/image_path.dart';
import 'category_container.dart';
import '../../common_widgets/custom_rich_text.dart';
import '../../common_widgets/custom_text_field.dart';

class ExploreProperty extends StatefulWidget {
  const ExploreProperty({super.key});

  @override
  State<ExploreProperty> createState() => _ExplorePropertyState();
}

class _ExplorePropertyState extends State<ExploreProperty> {

  bool tap0 = true;
  bool tap1 = false;
  bool tap2 = false;

  late final double screenHeight = MediaQuery.sizeOf(context).height;
  late final double screenWidth = MediaQuery.sizeOf(context).width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        //Background Image
        Padding(
          padding: EdgeInsets.only(top: screenHeight * .05),
          child: Image.asset(ImagePath.homeBgImage),
        ),
        Positioned(
          top: 110,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRichText(
                  firstText: 'Explore',
                  secondText: 'Property In India',
                  firstTextColor: AppColor.myWhite,
                  secondTextColor: AppColor.myWhite,
                ),
                SizedBox(height: 32),

                Row(
                  children: [
                    CategoryContainer(
                      title: 'Buy',
                      iconImage: 'assets/images/buy.png',
                      containerColor: tap0
                          ? AppColor.myOrange
                          : AppColor.myWhite,
                      iconColor: tap0
                          ? AppColor.myWhite
                          : AppColor.myOrange,
                      titleColor: tap0
                          ? AppColor.myWhite
                          : AppColor.primaryTextColor,
                      onTap: () {
                        setState(() {
                          tap0 = true; // false
                          tap1 = false;
                          tap2 = false;
                        });
                      },
                    ),
                    CategoryContainer(
                      title: 'Rent',
                      iconImage: 'assets/images/rent.png',
                      containerColor: tap1
                          ? AppColor.myOrange
                          : AppColor.myWhite,
                      iconColor: tap1
                          ? AppColor.myWhite
                          : AppColor.myOrange,
                      titleColor: tap1
                          ? AppColor.myWhite
                          : AppColor.primaryTextColor,
                      onTap: () {
                        setState(() {
                          tap1 = true; // false
                          tap0 = false;
                          tap2 = false;
                        });
                      },
                    ),
                    CategoryContainer(
                      title: 'Agents',
                      iconImage: 'assets/images/agents.png',
                      containerColor: tap2
                          ? AppColor.myOrange
                          : AppColor.myWhite,
                      iconColor: tap2
                          ? AppColor.myWhite
                          : AppColor.myOrange,
                      titleColor: tap2
                          ? AppColor.myWhite
                          : AppColor.myBlack,
                      onTap: () {
                        setState(() {
                          tap2 = true; // false
                          tap0 = false;
                          tap1 = false;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // CustomTextFiled
                CustomTextField(hintText: 'Select locality for buy',),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
