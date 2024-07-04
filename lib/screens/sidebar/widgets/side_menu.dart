import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/sidebar/widgets/my_area_info.dart';
import 'package:portfolio/screens/sidebar/widgets/socials.dart';

import 'cv.dart';
import 'my_coding_skills.dart';
import 'my_info.dart';
import 'my_knowledge.dart';
import 'my_skill.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Column(
                  children: [
                    AreaInfo(
                      title: 'Residence',
                      text: 'India',
                    ),
                    AreaInfo(
                      title: 'State',
                      text: 'Rajasthan',
                    ),
                    AreaInfo(
                      title: 'City',
                      text: 'Jaipur',
                    ),
                    Skills(),
                    SizedBox(height: 8.0),
                    Coding(),
                    MyKnowledge(),
                    Divider(),
                    SizedBox(height: 10.0),
                    CV(),
                    Socials()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
