// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/widgets/highlights_info.dart';
import 'package:portfolio/screens/main/widgets/home_banner.dart';
import 'package:portfolio/screens/main/widgets/my_recommendations.dart';
import 'package:portfolio/screens/sidebar/side_home_screen.dart';

import 'widgets/my_project_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SideHomeScreen(
      children: [
        HomeBanner(),

        //*** no. of projects ->
        HighLightsInfo(),

        //?? my projects ->
        MyProjectsDetails(),

        //?? recommendations on me ->
        MyRecommendations(),
      ],
    );
  }
}
