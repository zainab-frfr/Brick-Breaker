import 'package:flutter/material.dart';

class ScoreCard extends StatefulWidget {
  const ScoreCard({
    super.key,
    required this.score,
  });

  final ValueNotifier<int> score;

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: widget.score,
      builder: (context, score, child) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 18),
          child: Text(
            'Score: $score'.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge!,
          ),
        );
      },
    );
  }
}