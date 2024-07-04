import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_info.dart';

import 'flutter_coded_text.dart';

class ProjectsAnimatedText extends StatelessWidget {
  const ProjectsAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context)) const SizedBox(width: 10.0),
          const Text('I build '),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context)) const SizedBox(width: 10.0),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'Complete Social Media App.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Online Meeting App.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Flutter with ML projects.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Text Editor App.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Responsive web and mobile app.',
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
