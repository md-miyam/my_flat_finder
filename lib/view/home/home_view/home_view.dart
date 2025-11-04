import 'package:flutter/material.dart';
import '../widget/category_container.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'RealEstae India',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
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
            icon: Icon(Icons.menu, color: Colors.black, size: 24),
          ),
        ],
      ),
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
                      padding: EdgeInsets.only(top: screenHeight * .009),
                      child: Image.asset('assets/images/homeBg.png'),
                    ),
                    Positioned(
                      top: 130,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Explore ',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Property In India',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 32),

                            Row(
                              children: [
                                CategoryContainer(
                                  title: 'Buy',
                                  iconImage: 'assets/images/buy.png',
                                  containerColor: tap0
                                      ? Color(0xFFff6d17)
                                      : Colors.white,
                                  iconColor: tap0
                                      ? Colors.white
                                      : Color(0xFFff6d17),
                                  titleColor: tap0
                                      ? Colors.white
                                      : Colors.black,
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
                                      ? Color(0xFFff6d17)
                                      : Colors.white,
                                  iconColor: tap1
                                      ? Colors.white
                                      : Color(0xFFff6d17),
                                  titleColor: tap1
                                      ? Colors.white
                                      : Colors.black,
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
                                      ? Color(0xFFff6d17)
                                      : Colors.white,
                                  iconColor: tap2
                                      ? Colors.white
                                      : Color(0xFFff6d17),
                                  titleColor: tap2
                                      ? Colors.white
                                      : Colors.black,
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

                            Container(
                              height: 52,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 12, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/searchIcon.png',
                                      height: 20,
                                    ),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        cursorWidth: 1.5,
                                        cursorHeight: 20,
                                        decoration: InputDecoration(
                                          hintText: 'Select locality for buy',
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  // top: 10,
                  bottom: 30,
                  child: Container(
                    height: 300,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16) )
            //   ),
            //   child: Column(
            //     children: [
            //
            //
            //     ],
            //   ),
            // ),
            PropertyRoundedContainer(),
          ],
        ),
      ),
    );
  }
}
