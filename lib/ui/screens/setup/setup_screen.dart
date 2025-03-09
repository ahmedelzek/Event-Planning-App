import 'package:evently/ui/utilities/app_assets.dart';
import 'package:evently/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';

import '../../widgets/theme_switcher.dart';

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
                "Personalize Your Experience",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Language:",
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
                  Text("Theme", style: Theme.of(context).textTheme.bodyMedium),
                  const ThemeSwitcher(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              FilledButton(onPressed: () {}, child: const Text("Let's Start"))
            ],
          ),
        ),
      ),
    );
  }
}
