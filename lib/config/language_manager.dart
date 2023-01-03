// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/app/extensions.dart';

enum LanguageType { english, arabic }

const String arabic = "ar";
const String english = "en";
const String assetPathLocalization = "assets/translations";

const String prefKeyLang = 'pref_key_lang';

const Locale arabicLocal = Locale("ar");
const Locale englishLocal = Locale("en");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return english;
      case LanguageType.arabic:
        return arabic;
    }
  }
}

class LanguageCacheHelper {
  final SharedPreferences _sharedPreferences;

  LanguageCacheHelper(
      this._sharedPreferences,
      );

  void cachedLanguageCode(String languageCode){
    _sharedPreferences.setString(prefKeyLang, languageCode);
  }

  String getAppLanguage() {
    String? language = _sharedPreferences.getString(prefKeyLang);
    if (!language.nullOrEmpty()) {
      return language!;
    } else {
      // return default lang
      return LanguageType.english.getValue();
    }
  }


  Locale getLocal() {
    String currentLang =  getAppLanguage();

    if (currentLang == LanguageType.arabic.getValue()) {
      return arabicLocal;
    } else {
      return englishLocal;
    }
  }
}