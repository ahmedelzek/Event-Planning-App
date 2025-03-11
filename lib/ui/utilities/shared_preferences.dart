import 'package:shared_preferences/shared_preferences.dart';

class PreferencesKeys {
  static const String isOnboardingCompletedKey = "is_onboarding_completed_key";
}

Future<void> setOnboardingCompleted(bool isCompleted) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool(PreferencesKeys.isOnboardingCompletedKey, isCompleted);
}

Future<bool> getOnboardingCompleted() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getBool(PreferencesKeys.isOnboardingCompletedKey) ?? false;
}
