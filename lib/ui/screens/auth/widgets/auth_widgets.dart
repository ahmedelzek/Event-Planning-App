import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../l10n/app_translations.dart';

Widget emailOrNameTextFormField(BuildContext context,
    {required String? hint, required IconData? iconData}) {
  return TextFormField(
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(iconData),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
      ));
}

Widget passwordTextFormField(BuildContext context, {required String? hint}) {
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
    getTranslations(context).forget_password,
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
        getTranslations(context).dont_have_account,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      Text(getTranslations(context).create_account,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontStyle: FontStyle.italic,
              decoration:
              TextDecoration.underline,
              decorationThickness: 2,
              decorationColor: Theme.of(context).primaryColor)),
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
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(getTranslations(context).or),
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
      children: [
        Brand(Brands.google),
        Text(getTranslations(context).login_with_google)
      ],
    ),
  );
}
