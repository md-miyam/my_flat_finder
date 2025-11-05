import 'package:flutter/material.dart';
import 'package:my_flat_finder/modules/common_widgets/custom_text.dart';
import 'package:my_flat_finder/modules/home/widgets/top_localities_list_view.dart';
import '../../common_widgets/show_more_button.dart';
import 'explore_services_list_view.dart';
import 'featured_projects_list_view.dart';
import 'find_property_grid_view.dart';

class PropertyRoundedContainer extends StatefulWidget {
  const PropertyRoundedContainer({super.key});

  @override
  State<PropertyRoundedContainer> createState() =>
      _PropertyRoundedContainerState();
}

class _PropertyRoundedContainerState extends State<PropertyRoundedContainer> {
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

            // FindPropertyGrid
            FindPropertyGridView(),
            const SizedBox(height: 22),

            // Show more button
            ShowMoreButton(),
            const SizedBox(height: 38),

            // TopLocalitiesListView
            TopLocalitiesListView(),

            //ExploreServicesListView
            ExploreServicesListView(),

            //FeaturedProjectsListView
            FeaturedProjectsListView(),



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
}
