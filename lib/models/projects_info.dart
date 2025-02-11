import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ProjectInfo {
  final String? title, description, link;
  final Color? buttonColor;

  ProjectInfo({
    this.title,
    this.description,
    this.link,
    this.buttonColor,
  });
}

List<ProjectInfo> demoProjects = [
  ProjectInfo(
    title: "Responsive Disease Prediction App - HealthGuard",
    description:
        " ",
    link: 'https://github.com/anirudha1710/HealthGuard',
    buttonColor: primaryColor,
  ),
  ProjectInfo(
    title: "Responsive Movie Review App - Cinepick",
    description:
        "TMDB-Movie-App",
    link: 'https://github.com/anirudha1710/CinePick',
    buttonColor: primaryColor,
  ),
  ProjectInfo(
    title: "Responsive Music Generated App - TuneForge",
    description:
    "",
    link: 'https://github.com/anirudha1710/TuneForge',
    buttonColor: primaryColor,
  ),
];
