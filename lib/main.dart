import 'package:evently/providers/language_provider.dart';
import 'package:evently/providers/theme_providers.dart';
import 'package:evently/ui/screens/auth/forget_password/forget_password.dart';
import 'package:evently/ui/screens/auth/login/login_screen.dart';
import 'package:evently/ui/screens/auth/register/register_screen.dart';
import 'package:evently/ui/screens/onboarding/onboarding_screen.dart';
import 'package:evently/ui/screens/setup/setup_screen.dart';
import 'package:evently/ui/screens/splash/splash_screen.dart';
import 'package:evently/ui/utilities/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) {
        return LanguageProvider(
            sharedPreferences.getString(LanguageProvider.localeKey));
      }),
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(
              sharedPreferences.getBool(ThemeProvider.isLightModeKey) ?? true)),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Evently',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      initialRoute: SplashScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.currentLocale),
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
