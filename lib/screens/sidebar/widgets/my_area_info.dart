import 'package:flutter/material.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            text!,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
