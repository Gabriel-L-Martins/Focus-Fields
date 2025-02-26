import 'package:flutter/material.dart';
import 'package:focus_fields/models/challenge.dart';

class ChallengeProvider with ChangeNotifier {
  final List<Challenge> _challenges = [
    Challenge(title: 'Run 5km', type: ChallengeType.daily),
    Challenge(title: 'Read a book', type: ChallengeType.weekly),
    // Add more complex system for challenges
  ];

  ChallengeType _selectedType = ChallengeType.daily;

  ChallengeType get selectedType => _selectedType;
  List<Challenge> get filteredChallenges =>
      _challenges.where((c) => c.type == _selectedType).toList();

  void selectType(ChallengeType type) {
    _selectedType = type;
    notifyListeners();
  }
}
