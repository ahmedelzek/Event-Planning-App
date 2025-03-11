import 'package:evently/l10n/app_translations.dart';
import 'package:evently/ui/screens/auth/login/login_screen.dart';
import 'package:evently/ui/screens/auth/widgets/auth_widgets.dart';
import 'package:evently/ui/utilities/app_assets.dart';
import 'package:evently/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "register";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(getTranslations(context).register),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 20,
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    height: 200,
                    width: 200,
                  ),
                  emailOrNameTextFormField(context,
                      hint: getTranslations(context).email,
                      iconData: EvaIcons.person),
                  emailOrNameTextFormField(context,
                      hint: getTranslations(context).name,
                      iconData: EvaIcons.person),
                  passwordTextFormField(context,
                      hint: getTranslations(context).password),
                  passwordTextFormField(context,
                      hint: getTranslations(context).re_password),
                  FilledButton(
                    onPressed: () {},
                    child: Text(getTranslations(context).create_account),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            getTranslations(context).already_have_account,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(getTranslations(context).login,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.underline)),
                        ],
                      )),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [LanguageSwitcher()])
                ],
              ),
            ),
          )),
    );
  }
}
