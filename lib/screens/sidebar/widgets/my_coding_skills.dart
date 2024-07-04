import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

import 'animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),

        //*** linear progress indicator ->
        const AnimatedLinearProgressIndicator(
          color: Colors.blue,
          percentage: 0.65,
          label: 'Dart',
        ),
        const AnimatedLinearProgressIndicator(
          color: primaryColor,
          percentage: 0.85,
          label: 'Java',
        ),
        const AnimatedLinearProgressIndicator(
          color: ternaryColor,
          percentage: 0.45,
          label: 'Python',
        ),
        const AnimatedLinearProgressIndicator(
          color: Colors.orange,
          percentage: 0.7,
          label: 'C++',
        ),
        const AnimatedLinearProgressIndicator(
          color: Colors.redAccent,
          percentage: 0.6,
          label: 'C',
        ),
        const AnimatedLinearProgressIndicator(
          color: Colors.cyanAccent,
          percentage: 0.9,
          label: 'HTML',
        ),
        const AnimatedLinearProgressIndicator(
          color: Colors.greenAccent,
          percentage: 0.5,
          label: 'CSS',
        ),
        const AnimatedLinearProgressIndicator(
          color: Colors.purpleAccent,
          percentage: 0.3,
          label: 'Javascript',
        ),
      ],
    );
  }
}
