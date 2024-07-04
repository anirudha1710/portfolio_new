import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.color,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final Color color;
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TweenAnimationBuilder(
        tween: Tween<double>(
          begin: 0,
          end: percentage,
        ),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${(value * 100).toInt()}%',
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            LinearProgressIndicator(
              value: value,
              color: color,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
