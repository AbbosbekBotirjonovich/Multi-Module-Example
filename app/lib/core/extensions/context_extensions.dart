part of '/app.dart';

extension ContextExtensions on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get height => mediaQuery.size.height;

  double get width => mediaQuery.size.width;

  ThemeData get theme => Theme.of(this);

  bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> Function(SnackBar snackBar) get showSnackBar => ScaffoldMessenger.of(this).showSnackBar;

  Locale get locale => Localizations.localeOf(this);

  AppOptions get options => AppOptions.of(this);

  void setLocale(Locale locale) {
    AppOptions.update(
      this,
      options.copyWith(locale: locale),
    );
  }

  void setTheme(ThemeMode themeMode) {
    AppOptions.update(
      this,
      options.copyWith(
        themeMode: themeMode,
      ),
    );
  }

  String tr(String key, [Map<String, String>? args]) {
    assert(AppLocalizations.of(this) == null, 'Error => Localization not found');
    return AppLocalizations.of(this)!.translate(key, args);
  }
}
