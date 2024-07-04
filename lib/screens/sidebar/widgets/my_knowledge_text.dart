import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyKnowledgeText extends StatelessWidget {
  const MyKnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: 15.0),
          Text(text),
        ],
      ),
    );
  }
}
