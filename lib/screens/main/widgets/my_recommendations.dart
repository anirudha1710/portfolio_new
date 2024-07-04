import 'package:flutter/material.dart';
import 'package:portfolio/models/recommendations.dart';
import 'package:portfolio/screens/main/widgets/my_recommendations_card.dart';

class MyRecommendations extends StatelessWidget {
  const MyRecommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Text(
              'Certification And Achievement',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoRecommendations.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: MyRecommendationCard(
                      recommendation: demoRecommendations[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
