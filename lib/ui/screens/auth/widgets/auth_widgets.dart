import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

Widget emailOrNameTextFormField(BuildContext context,
    [String? hint = "Email", IconData? iconData = EvaIcons.email]) {
  return TextFormField(
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(iconData),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
      ));
}

Widget passwordTextFormField(BuildContext context,
    [String? hint = "Password"]) {
  return TextFormField(
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(EvaIcons.lock),
        suffixIcon: const Icon(EvaIcons.eye),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
      ));
}

Widget forgetPasswordText(BuildContext context) {
  return Text(
    "Forget Password?",
    textAlign: TextAlign.end,
    style: Theme.of(context).textTheme.labelLarge?.copyWith(
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationThickness: 2,
        decorationColor: Theme.of(context).primaryColor),
  );
}

Widget createAccountText(BuildContext context) {
  return Row(
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
  );
}

Widget orText(BuildContext context) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
  ]);
}

Widget loginWithGoogleButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).primaryColor, width: 1.5)),
    child: Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Brand(Brands.google), const Text("Login With Google")],
    ),
  );
}
