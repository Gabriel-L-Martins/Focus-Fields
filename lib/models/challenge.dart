enum ChallengeType { daily, weekly }

class Challenge {
  final String title;
  final ChallengeType type;
  // Add other fields later

  Challenge({required this.title, required this.type});
}
