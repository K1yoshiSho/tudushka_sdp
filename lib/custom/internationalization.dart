import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomLocalizations {
  CustomLocalizations(this.locale);

  final Locale locale;

  static CustomLocalizations of(BuildContext context) =>
      Localizations.of<CustomLocalizations>(context, CustomLocalizations)!;

  static List<String> languages() => ['ru'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
  }) =>
      [ruText][languageIndex] ?? '';
}

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  const CustomLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      CustomLocalizations.languages().contains(locale.toString());

  @override
  Future<CustomLocalizations> load(Locale locale) =>
      SynchronousFuture<CustomLocalizations>(CustomLocalizations(locale));

  @override
  bool shouldReload(CustomLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap =
    <Map<String, Map<String, String>>>[].reduce((a, b) => a..addAll(b));
