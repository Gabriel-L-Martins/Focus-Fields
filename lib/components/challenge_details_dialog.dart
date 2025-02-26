import 'package:flutter/material.dart';
import '../models/challenge.dart';

class ChallengeDetailsDialog extends StatelessWidget {
  final Challenge challenge;

  const ChallengeDetailsDialog({super.key, required this.challenge});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(challenge.title),
      content: const Text(
        'Detailed information about the challenge can go here.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
