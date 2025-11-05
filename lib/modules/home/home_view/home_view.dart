import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flat_finder/until/app_colors.dart';
import '../widgets/explore_property.dart';
import '../widgets/property_rounded_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  late final double screenHeight = MediaQuery.sizeOf(context).height;
  late final double screenWidth = MediaQuery.sizeOf(context).width;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
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
              // ExploreProperty Stake
              ExploreProperty(),

              // White body PropertyRoundedContainer
              Transform.translate(offset: Offset(0, -30),child: PropertyRoundedContainer(),),
            ],
          ),
        ),
      ),
    );
  }
}



