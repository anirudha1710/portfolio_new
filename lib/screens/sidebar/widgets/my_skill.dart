import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/sidebar/widgets/animated_circular_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),

        //*** circular progress indicator ->
        const Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: 'Flutter',
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.40,
                label: 'Firebase',
                color: primaryColor,
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: 'Java',
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
