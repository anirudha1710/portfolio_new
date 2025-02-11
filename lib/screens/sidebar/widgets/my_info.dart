import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                "assets/images/Anirudha.jpg",
              ),
            ),
            const Spacer(),
            Text(
              'Anirudha Sharma',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              'Android and Flutter Developer',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
                letterSpacing: 0.86,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
