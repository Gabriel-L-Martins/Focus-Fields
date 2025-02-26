import 'package:flutter/material.dart';
import '../models/challenge.dart';

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;

  const ChallengeCard({super.key, required this.challenge});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(challenge.title),
        onTap: () {
          // showDialog(
          // context: context,
          // builder: (context) => ChallengeDetailsDialog(challenge: challenge),
          // );
        },
      ),
    );
  }
}
