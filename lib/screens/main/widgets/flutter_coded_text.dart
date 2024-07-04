import 'package:flutter/material.dart';

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'Flutter',
            style: TextStyle(
              color: Colors.tealAccent,
            ),
          ),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
