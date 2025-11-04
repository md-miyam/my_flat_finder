import 'package:flutter/material.dart';
import 'package:my_flat_finder/until/app_colors.dart';
import '../../../until/image_path.dart';
import '../widget/category_container.dart';
import '../widget/custom_rich_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/property_rounded_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool tap0 = true;
  bool tap1 = false;
  bool tap2 = false;

  late final double screenHeight = MediaQuery.sizeOf(context).height;
  late final double screenWidth = MediaQuery.sizeOf(context).width;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryBackgroundColor,
        extendBodyBehindAppBar: true,
        // App Bar
        appBar: AppBar(
          title: Text(
            'RealEstae India',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryTextColor,
            ),
          ),
          backgroundColor: AppColor.appBarColor,
          toolbarHeight: 66,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
      
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: AppColor.myBlack, size: 24),
            ),
          ],
        ),
      
        // body
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Stack(
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
                  ),
                ],
              ),
      
              PropertyRoundedContainer(),
            ],
          ),
        ),
      ),
    );
  }
}



