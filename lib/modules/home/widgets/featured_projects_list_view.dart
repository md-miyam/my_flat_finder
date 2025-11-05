import 'package:flutter/material.dart';
import '../../../until/app_colors.dart';
import '../../common_widgets/custom_text.dart';
import '../../common_widgets/show_more_button.dart';

class FeaturedProjectsListView extends StatelessWidget {
  FeaturedProjectsListView({super.key});

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
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.secondaryBackgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: 'Featured real estate projects in india'),

          SizedBox(height: 30),

          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = listData[index];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/mansarovar_park.png',
                            height: 130,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'Mansarovar park Ii'),
                                      CustomText(
                                        text: 'lal kuan, ghaziabad',
                                        color: AppColor.secondaryTextColor,
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'residential plots'),
                                      CustomText(
                                        text: 'property vision promoters...',
                                        color: AppColor.secondaryTextColor,
                                        fontSize: 14,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              CustomText(text: '₹25.50 lac -32 lac'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColor.borderColor,
                  ),
                ],
              );
            },
          ),

          SizedBox(height: 22),
          ShowMoreButton(onTap: () {}),
        ],
      ),
    );
  }
}
