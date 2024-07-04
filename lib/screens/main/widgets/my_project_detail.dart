// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_info.dart';
import 'package:portfolio/screens/main/widgets/project_grid_view.dart';

class MyProjectsDetails extends StatelessWidget {
  const MyProjectsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20.0),

        //*** grid to show projects ->
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(),
        ),
      ],
    );
  }
}
