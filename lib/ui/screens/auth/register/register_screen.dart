import 'package:evently/ui/screens/auth/login/login_screen.dart';
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
            title: const Text("Register"),
            centerTitle: true,
          ),
          body: Padding(
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
                TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: const Icon(EvaIcons.person),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(EvaIcons.email),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(EvaIcons.lock),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge,
                  decoration: InputDecoration(
                    hintText: "Re Password",
                    prefixIcon: const Icon(EvaIcons.lock),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text("Create Account"),
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
                          "Already Have An Account?",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text("Login",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline)),
                      ],
                    )),
                const Spacer(),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [LanguageSwitcher()])
              ],
            ),
          )),
    );
  }
}
