import 'package:evently/l10n/app_translations.dart';
import 'package:evently/ui/screens/auth/forget_password/forget_password.dart';
import 'package:evently/ui/screens/auth/widgets/auth_widgets.dart';
import 'package:evently/ui/utilities/app_assets.dart';
import 'package:evently/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../widgets/theme_switcher.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: null,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AppImages.appLogo,
                  height: 200,
                  width: 200,
                ),
                emailOrNameTextFormField(context,
                    hint: getTranslations(context).email,
                    iconData: EvaIcons.email),
                passwordTextFormField(context,
                    hint: getTranslations(context).password),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ForgetPasswordScreen.routeName);
                  },
                  child: forgetPasswordText(context),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text(getTranslations(context).login),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: createAccountText(context),
                ),
                orText(context),
                loginWithGoogleButton(context),
                const Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [LanguageSwitcher(), ThemeSwitcher()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
