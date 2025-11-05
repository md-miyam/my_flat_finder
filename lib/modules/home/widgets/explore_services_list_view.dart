import 'package:flutter/material.dart';
import 'package:my_flat_finder/until/app_colors.dart';

import '../../common_widgets/custom_text.dart';
import '../../common_widgets/show_more_button.dart';

class ExploreServicesListView extends StatelessWidget {
  ExploreServicesListView({super.key});

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
      height: 328,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: CustomText(text: 'Explore Our Real Estate Services'),
            ),

            SizedBox(
              height: 160,
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
                      padding: EdgeInsets.all(16),
                      width: 234,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: item["bgColor"],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(item["icon"], height: 42),
                          Spacer(),
                          CustomText(
                            text: item["title"],
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: item["subTitle"],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }
}
