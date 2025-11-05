import 'package:flutter/material.dart';
import '../../../until/app_colors.dart';
import '../../common_widgets/custom_text.dart';
import '../../common_widgets/show_more_button.dart';

class FeaturedPropertyAgentsListView extends StatelessWidget {
  FeaturedPropertyAgentsListView({super.key});

  final List<Map<String, dynamic>> listData = [
    {
      "icon": "assets/icons/agents_brokers.png",
      "title": "Agents / Brokers",
      "subTitle":
          "Here are hassle-free solutions! buy - sell - rent your property",
      "bgColor": Color(0xFFd9efe9),
    },
    {
      "icon": "assets/icons/builders.png",
      "title": "Builders",
      "subTitle":
          "Here are hassle-free solutions! buy - sell - rent your property",
      "bgColor": Color(0xFFf7eedd),
    },
    {
      "icon": "assets/icons/agents_brokers.png",
      "title": "Agents / Brokers",
      "subTitle":
          "Here are hassle-free solutions! buy - sell - rent your property",
      "bgColor": Color(0xFFd9efe9),
    },
    {
      "icon": "assets/icons/builders.png",
      "title": "Builders",
      "subTitle":
          "Here are hassle-free solutions! buy - sell - rent your property",
      "bgColor": Color(0xFFf7eedd),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: CustomText(text: 'Featured Property Agents'),
            ),

            SizedBox(
              height: 200,
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
                      width: 245,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primaryBackgroundColor,
                        border: Border.all(color: AppColor.borderColor),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 84,
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColor.borderColor,
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
                                      color: AppColor.secondaryTextColor,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/properties.png',
                                      ),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'properties',
                                      fontSize: 14,
                                      color: AppColor.secondaryTextColor,
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        CustomText(
                                          text: '56 sale',
                                          fontSize: 14,
                                          color: AppColor.primaryTextColor,
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 5,
                                          ),
                                          height: 22,
                                          width: 1,
                                          color: AppColor.secondaryTextColor,
                                        ),
                                        CustomText(
                                          text: '155 rent',
                                          fontSize: 14,
                                          color: AppColor.primaryTextColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'Rudra properties'),
                                CustomText(
                                  text: 'Site 4 sahibabad, ghaziabad',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.secondaryTextColor,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: AppColor.borderColor,
                                  ),
                                ),
                                child: CustomText(
                                  text: 'Ghaziabab',
                                  fontSize: 14,
                                  color: AppColor.secondaryTextColor,
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: AppColor.borderColor,
                                  ),
                                ),
                                child: CustomText(
                                  text: 'Noida',
                                  fontSize: 14,
                                  color: AppColor.secondaryTextColor,
                                ),
                              ),
                            ],
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
