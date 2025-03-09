import 'package:evently/ui/screens/auth/login/login_screen.dart';
import 'package:evently/ui/screens/auth/register/register_screen.dart';
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
      initialRoute: RegisterScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        SetupScreen.routeName: (_) => const SetupScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        RegisterScreen.routeName: (_) => const RegisterScreen(),
      },
    );
  }
}
