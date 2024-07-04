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
    title: "Responsive Chat App with firebase backend - Converse",
    description:
        "This is a fully responsive Chat App integrated with firebase backend. This app has it all- phone number verification, one to one chatting , group chatting, 24-hour based status funtionality, user online or offline verification, message seen or not verification, replying to a particular message, sharing emojis, gifs, pictures, video and audio, and calling funtionality with your contacts who uses this app.",
    link: 'https://github.com/anirudha1710/Converse',
    buttonColor: primaryColor,
  ),
  ProjectInfo(
    title: "Responsive Movie Review App - Cinepick",
    description:
        "TMDB-Movie-App",
    link: 'https://github.com/anirudha1710/CinePick',
    buttonColor: primaryColor,
  ),
];
