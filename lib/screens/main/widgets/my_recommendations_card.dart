import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recommendations.dart';
import 'package:portfolio/responsive/responsive_info.dart';
import 'package:url_launcher/url_launcher.dart';

class MyRecommendationCard extends StatelessWidget {
  const MyRecommendationCard({
    super.key,
    required this.recommendation,
  });

  final Certificates recommendation;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: Responsive.isMobile(context) ? 380.0 : 400.0,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            TextButton(
              onPressed: () async {
                var url = recommendation.link;
                final uri = Uri.parse(url!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  // can't launch url
                }
              },
              child: Text(
                recommendation.source!,
                style: const TextStyle(color: Colors.cyan),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              recommendation.text!,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
