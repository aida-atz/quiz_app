import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final Map<String, Object> summaryData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(((summaryData['question_index'] as int) + 1).toString()),
        Expanded(
            child: Column(
          children: [
            Text((summaryData['question'] as String)),
            const SizedBox(
              height: 5,
            ),
            Text((summaryData['correct_answer'] as String)),
            Text((summaryData['user_answer'] as String))
          ],
        )),
      ],
    );
  }
}
