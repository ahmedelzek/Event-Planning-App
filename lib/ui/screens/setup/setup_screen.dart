import 'package:evently/ui/utilities/app_assets.dart';
import 'package:evently/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_translations.dart';
import '../../widgets/theme_switcher.dart';
import '../onboarding/onboarding_screen.dart';

class SetupScreen extends StatelessWidget {
  static const String routeName = "setup";

  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                AppImages.headerLogo,
              ),
              Image.asset(AppImages.beingCreative),
              Text(
                getTranslations(context).setup_screen_title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                getTranslations(context).setup_screen_description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(getTranslations(context).language,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const LanguageSwitcher(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(getTranslations(context).theme,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const ThemeSwitcher(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              FilledButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, OnboardingScreen.routeName);
                  },
                  child: Text(getTranslations(context).lets_start))
            ],
          ),
        ),
      ),
    );
  }
}
