part of '/app.dart';

class AppLocalizations {
  final Locale locale;

  late var _localeValues = <String, String>{};

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String translate(String key, [Map<String, String>? args]) {
    if (_localeValues.isEmpty) return key;
    if (args != null) {
      String txt = _localeValues[key] ?? key;

      args.forEach(
        (key, value) {
          txt = txt.replaceAll('{$key}', value);
        },
      );
      return txt;
    }
    return _localeValues[key] ?? '';
  }

  Future<void> load() async {
    final jsonData = await rootBundle.loadString('packages/app/assets/locale/${locale.languageCode}.json');
    _localeValues = _flattenValue(jsonDecode(jsonData));
  }

  Map<String, String> _flattenValue(Map<String, dynamic> json, [String prefix = '']) {
    final result = <String, String>{};
    json.forEach(
      (key, value) {
        String newKey = prefix.isEmpty ? key : '$prefix.$key';
        if (value is Map<String, dynamic>) {
          result.addAll(_flattenValue(value, newKey));
        } else {
          result[newKey] = value;
        }
      },
    );
    return result;
  }
}
