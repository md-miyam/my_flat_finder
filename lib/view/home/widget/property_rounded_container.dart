import 'package:flutter/material.dart';

class PropertyRoundedContainer extends StatefulWidget {
  const PropertyRoundedContainer({super.key});

  @override
  State<PropertyRoundedContainer> createState() =>
      _PropertyRoundedContainerState();
}

class _PropertyRoundedContainerState extends State<PropertyRoundedContainer> {
  List<Map<String, String>> gridData = [
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
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //yourPropertyText
            yourPropertyText(),
            const SizedBox(height: 30),

            // myGridView
            myGridView(),
            const SizedBox(height: 22),

            // Show more button
            showMoreButton(),
            const SizedBox(height: 38),

            Container(
              height: 418,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFf3f4f5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32),
                    Text(
                      'Top Localities To Buy/Rent Properties',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30),

                    SizedBox(
                      height: 251,
                      child: ListView.builder(
                        itemCount: gridData.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Container(
                              width: 192,
                              decoration: BoxDecoration(
                                color: Colors.white,
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
                                      // height: 191,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          gridData[index]['image']!,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Shahberi',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          gridData[index]['city']!,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF6A7380),
                                          ),
                                        ),
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

                    showMoreButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding yourPropertyText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Text(
        'Find your property in your preferred city',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFFa2a7af),
        ),
      ),
    );
  }

  // myGridView
  Padding myGridView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        itemCount: gridData.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    gridData[index]['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/greadient.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      gridData[index]['city']!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Show more button
  Center showMoreButton() {
    return Center(
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Show more',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFFff6d17),
              ),
            ),
            const SizedBox(width: 10),
            Image.asset('assets/images/more_down.png', height: 18),
          ],
        ),
      ),
    );
  }
}
