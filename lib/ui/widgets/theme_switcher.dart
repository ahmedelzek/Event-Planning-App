import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

import '../../providers/theme_providers.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return AnimatedToggleSwitch<ThemeMode>.rolling(
      current: themeProvider.currentTheme,
      values: const [ThemeMode.light, ThemeMode.dark],
      style: ToggleStyle(
          backgroundColor: Colors.transparent,
          indicatorColor: Theme.of(context).primaryColor,
          borderColor: Theme.of(context).primaryColor),
      onChanged: (newThemeMode) {
        themeProvider.changeTheme(newThemeMode);
      },
      iconBuilder: (value, foreground) {
        if (value == ThemeMode.light) {
          return const Icon(EvaIcons.sun);
        } else {
          return const Icon(EvaIcons.moon);
        }
      },
    );
  }
}
