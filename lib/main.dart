import 'package:evently/ui/screens/auth/forget_password/forget_password.dart';
import 'package:evently/ui/screens/auth/login/login_screen.dart';
import 'package:evently/ui/screens/auth/register/register_screen.dart';
import 'package:evently/ui/screens/onboarding/onboarding_screen.dart';
import 'package:evently/ui/screens/setup/setup_screen.dart';
import 'package:evently/ui/screens/splash/splash_screen.dart';
import 'package:evently/ui/utilities/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evently',
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        OnboardingScreen.routeName: (_) => const OnboardingScreen(),
        SetupScreen.routeName: (_) => const SetupScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
        ForgetPasswordScreen.routeName: (_) => const ForgetPasswordScreen(),
      },
    );
  }
}
