import 'package:evently/ui/utilities/app_assets.dart';
import 'package:evently/ui/widgets/language_switcher.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(EvaIcons.email),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  )),
              TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(EvaIcons.lock),
                    suffixIcon: const Icon(EvaIcons.eye),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  )),
              Text(
                "Forget Password?",
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: Theme.of(context).primaryColor),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have Account? ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text("Create Account",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1.5,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1.5,
                  ),
                ),
              ]),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.5)),
                child: Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.googleLogo),
                    const Text("Login With Google")
                  ],
                ),
              ),
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
