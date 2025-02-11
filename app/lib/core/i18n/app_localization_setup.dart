part of '/app.dart';

class AppLocalizationSetup {
  AppLocalizationSetup._();

  static const supportedLocales = [
    Locale('uz'),
    Locale('en'),
    Locale('ru'),
  ];

  static Iterable<LocalizationsDelegate<dynamic>> localizationsDelegate =
      const [
    AppLocalizationDelegate(),
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
  ];
}
