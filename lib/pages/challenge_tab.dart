import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/challenge_card.dart';
import '../models/challenge.dart';
import '../providers/challenge_provider.dart';

class ChallengeTab extends StatelessWidget {
  const ChallengeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ChallengeProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ToggleButtons(
                isSelected: [
                  provider.selectedType == ChallengeType.daily,
                  provider.selectedType == ChallengeType.weekly,
                ],
                onPressed: (index) {
                  provider.selectType(
                    index == 0 ? ChallengeType.daily : ChallengeType.weekly,
                  );
                },
                children: const [
                  Padding(padding: EdgeInsets.all(8.0), child: Text("Daily")),
                  Padding(padding: EdgeInsets.all(8.0), child: Text("Weekly")),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: provider.filteredChallenges.length,
                itemBuilder: (context, index) {
                  return ChallengeCard(
                    challenge: provider.filteredChallenges[index],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
