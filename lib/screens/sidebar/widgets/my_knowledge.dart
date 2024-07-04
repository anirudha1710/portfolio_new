import 'package:flutter/material.dart';

import 'my_knowledge_text.dart';

class MyKnowledge extends StatelessWidget {
  const MyKnowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Knowledge',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          const MyKnowledgeText(text: 'Flutter, Dart'),
          const MyKnowledgeText(text: 'Firebase, AppWrite'),
          const MyKnowledgeText(text: 'Data Structures and Analysis'),
          const MyKnowledgeText(text: 'Android App Development'),
          const MyKnowledgeText(text: 'Version Control'),
        ],
      ),
    );
  }
}
