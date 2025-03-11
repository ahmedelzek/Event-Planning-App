import 'package:evently/l10n/app_translations.dart';
import 'package:evently/ui/screens/auth/widgets/auth_widgets.dart';
import 'package:evently/ui/utilities/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = "ForgetPassword";

  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(getTranslations(context).forget_password),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 22,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(AppImages.changeSettings),
                  emailOrNameTextFormField(context,
                      hint: getTranslations(context).email,
                      iconData: EvaIcons.email),
                  FilledButton(
                      onPressed: () {},
                      child: Text(getTranslations(context).reset_password))
                ],
              ),
            ),
          )),
    );
  }
}
