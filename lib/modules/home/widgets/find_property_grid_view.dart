import 'package:flutter/material.dart';

class FindPropertyGridView extends StatelessWidget {
  const FindPropertyGridView({super.key});

  @override
  Widget build(BuildContext context) {
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
}
