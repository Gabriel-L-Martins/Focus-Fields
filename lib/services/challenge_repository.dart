import 'package:focus_fields/models/challenge.dart';

class ChallengeRepository {
  Future<List<Challenge>> fetchChallenges() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return [
      Challenge(title: 'Run 5km', type: ChallengeType.daily),
      Challenge(title: 'Read a book', type: ChallengeType.weekly),
    ];
  }
}
