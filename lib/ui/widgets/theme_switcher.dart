import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  var selectedThemeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<ThemeMode>.rolling(
      current: selectedThemeMode,
      values: const [ThemeMode.light, ThemeMode.dark],
      style: ToggleStyle(
          backgroundColor: Colors.transparent,
          indicatorColor: Theme.of(context).primaryColor,
          borderColor: Theme.of(context).primaryColor),
      onChanged: (newThemeMode) {
        selectedThemeMode = newThemeMode;
        setState(() {});
      },
      iconBuilder: (value, foreground) {
        if (value == ThemeMode.light) {
          return Icon(EvaIcons.sun);
        } else {
          return Icon(EvaIcons.moon);
        }
      },
    );
  }
}
