import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

import '../../providers/language_provider.dart';

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return AnimatedToggleSwitch<String>.rolling(
      current: languageProvider.currentLocale,
      values: const ["ar", "en"],
      style: ToggleStyle(
          backgroundColor: Colors.transparent,
          indicatorColor: Theme.of(context).primaryColor,
          borderColor: Theme.of(context).primaryColor),
      onChanged: (newLocale) {
        Future.delayed(const Duration(microseconds: 500),(){
          languageProvider.changeLocale(newLocale);
        });
      },
      iconBuilder: (value, foreground) {
        if (value == "ar") {
          return Flag(Flags.egypt);
        } else {
          return Flag(Flags.united_states_of_america);
        }
      },
    );
  }
}
