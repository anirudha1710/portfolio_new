import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive/responsive_info.dart';
import 'package:portfolio/screens/main/widgets/animated_counter.dart';
import 'package:portfolio/screens/main/widgets/highlights.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                      counter: AnimatedCounter(
                        value: 10,
                        text: '+',
                      ),
                      lable: 'Github Projects',
                    ),
                    Highlights(
                      counter: AnimatedCounter(
                        value: 8,
                        text: ".06",
                        color: primaryColor,
                      ),
                      lable: 'CGPA',
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                      counter: AnimatedCounter(
                        value: 5,
                        text: '⭐',
                        color: Colors.cyan,
                      ),
                      lable: 'Java on Hackerrank',
                    ),
                  ],
                ),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlights(
                  counter: AnimatedCounter(
                    value: 10,
                    text: '+',
                  ),
                  lable: 'Github Projects',
                ),
                Highlights(
                  counter: AnimatedCounter(
                    value: 8,
                    text: '.06',
                    color: primaryColor,
                  ),
                  lable: 'CGPA',
                ),
                Highlights(
                  counter: AnimatedCounter(
                    value: 5,
                    text: '⭐',
                    color: Colors.cyan,
                  ),
                  lable: 'Java on Hackerrank',
                ),
                Highlights(
                  counter: AnimatedCounter(
                    value: 150,
                    text: '+',
                    color: Colors.cyan,
                  ),
                  lable: 'Leetcode Problems',
                ),
              ],
            ),
    );
  }
}
