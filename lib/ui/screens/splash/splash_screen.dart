import 'package:flutter/material.dart';

import '../../utilities/app_assets.dart';
import '../../../providers/shared_preferences.dart';
import '../auth/login/login_screen.dart';
import '../setup/setup_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      final isOnboardingCompleted = await getOnboardingCompleted();
      // Navigate to the appropriate screen
      Navigator.pushReplacementNamed(
        context,
        isOnboardingCompleted ? LoginScreen.routeName : SetupScreen.routeName,
      );
    });
    return Scaffold(
      appBar: null,
      body: splashScreen(),
    );
  }

  Widget splashScreen() {
    return const Stack(
      children: [
        Center(
          child: Image(image: AssetImage(AppImages.appLogo)),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image(image: AssetImage(AppImages.routeLogo)))
      ],
    );
  }
}
