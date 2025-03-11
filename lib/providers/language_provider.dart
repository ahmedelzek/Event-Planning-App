import 'package:flutter/cupertino.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLocale = "en";

  void changeLanguage(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
  }
}
