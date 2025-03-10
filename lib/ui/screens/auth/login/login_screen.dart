import 'package:evently/ui/screens/auth/forget_password/forget_password.dart';
import 'package:evently/ui/screens/auth/widgets/auth_widgets.dart';
import 'package:evently/ui/utilities/app_assets.dart';
import 'package:evently/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                AppImages.appLogo,
                height: 200,
                width: 200,
              ),
              emailOrNameTextFormField(context),
              passwordTextFormField(context),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
                },
                child: forgetPasswordText(context),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: createAccountText(context),
              ),
              orText(context),
              loginWithGoogleButton(context),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [LanguageSwitcher()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
