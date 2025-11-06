import 'package:flutter/material.dart';
import '../../../until/app_colors.dart';
import '../../common_widgets/custom_text.dart';
import '../../common_widgets/show_more_button.dart';

class LatestPropertiesSaleListView extends StatelessWidget {
  LatestPropertiesSaleListView({super.key});

  final List<Map<String, String>> listData = [
    {'image': 'assets/images/new_delhi.png', 'city': 'New Delhi'},
    {'image': 'assets/images/mumbai.png', 'city': 'Mumbai'},
    {'image': 'assets/images/gurgaon.png', 'city': 'Gurgaon'},
    {'image': 'assets/images/noida.png', 'city': 'Noida'},
    {'image': 'assets/images/bangalore.png', 'city': 'Bangalore'},
    {'image': 'assets/images/ahmedabad.png', 'city': 'Ahmedabad'},
    {'image': 'assets/images/kolkata.png', 'city': 'Kolkata'},
    {'image': 'assets/images/chennai.png', 'city': 'Chennai'},
    {'image': 'assets/images/hyderabab.png', 'city': 'Hyderabad'},
  ];


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 418,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColor.primaryBackgroundColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: CustomText(text: 'Latest Properties For Sale'),
            ),

            SizedBox(
              height: 281,
              child: ListView.builder(
                itemCount: listData.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: AppColor.secondaryBackgroundColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 16,
                                left: 16,
                                right: 16,
                              ),
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  listData[index]['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                CustomText(text: '₹37 Lac',fontWeight: FontWeight.bold,),
                                SizedBox(
                                  height: 12,
                                ),
                                CustomText(text: 'Flats & Apartments',fontSize: 14,),
                                CustomText(text: '2 BHK / 800 SQ.FT.',fontSize: 12,color: AppColor.secondaryTextColor,),
                                SizedBox(
                                  height: 4,
                                ),
                                RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'By ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColor.secondaryTextColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Mukulananda Panja',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColor.primaryTextColor,
                                      ),
                                    ),

                                  ]
                                )),
                                CustomText(text: 'Dhakuria (Kolkata)',fontSize: 12,color: AppColor.secondaryTextColor,),

                              ],
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

            ShowMoreButton(),
          ],
        ),
      ),
    );
  }
}
