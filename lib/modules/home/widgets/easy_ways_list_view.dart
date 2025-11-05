import 'package:flutter/material.dart';
import '../../../until/app_colors.dart';
import '../../common_widgets/custom_text.dart';
import '../../common_widgets/show_more_button.dart';

class EasyWaysListView extends StatelessWidget {
  EasyWaysListView({super.key});

  final List<Map<String, dynamic>> listData = [
    {
      "icon": "assets/icons/new_projects.png",
      "title": "New Projects",
      "subTitle": "India’s most popular upcoming & ongoing projects within your budget",
      "bgColor": Color(0xFF188f71),
      "borderColor": Color(0xFF74bcaa),
    },
    {
      "icon": "assets/icons/find_property.png",
      "title": "Find Property",
      "subTitle": "Search properties from india’s largest property database as per your criteria",
      "bgColor": Color(0xFFfcab10),
      "borderColor": Color(0xFFfdcd70),
    },
    {
      "icon": "assets/icons/new_projects.png",
      "title": "New Projects",
      "subTitle": "India’s most popular upcoming & ongoing projects within your budget",
      "bgColor": Color(0xFF188f71),
      "borderColor": Color(0xFF74bcaa),
    },
    {
      "icon": "assets/icons/find_property.png",
      "title": "Find Property",
      "subTitle": "Search properties from india’s largest property database as per your criteria",
      "bgColor": Color(0xFFfcab10),
      "borderColor": Color(0xFFfdcd70),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.secondaryBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: CustomText(text: 'Easy Ways To Buy / Sell Properties'),
            ),

            SizedBox(
              height: 170,
              child: ListView.builder(
                itemCount: listData.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = listData[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primaryBackgroundColor,
                        border: Border.all(color: AppColor.borderColor),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 72,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: item['bgColor'],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: item['borderColor'],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(item['icon']),
                                  ),
                                ),
                                SizedBox(width: 10),
                                CustomText(
                                  text: item['title'],
                                  color: AppColor.myWhite,
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 10),
                            child: CustomText(
                              text:
                              item['subTitle'],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.secondaryTextColor,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 21),

            ShowMoreButton(onTap: () {}),

            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
