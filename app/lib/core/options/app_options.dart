part of '/app.dart';

@immutable
class AppOptions {
  final ThemeMode themeMode;
  final Locale locale;

  const AppOptions({
    required this.themeMode,
    required this.locale,
  });

  static AppOptions of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<OptionScope>()!.state.currentOptions;
  }

  static void update(BuildContext context, AppOptions newOptions) {
    context.dependOnInheritedWidgetOfExactType<OptionScope>()?.state.update(newOptions);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AppOptions && runtimeType == other.runtimeType && themeMode == other.themeMode && locale == other.locale;

  @override
  int get hashCode => themeMode.hashCode ^ locale.hashCode;

  AppOptions copyWith({
    ThemeMode? themeMode,
    Locale? locale,
  }) {
    return AppOptions(
      themeMode: themeMode ?? this.themeMode,
      locale: locale ?? this.locale,
    );
  }
}

class OptionScope extends InheritedWidget {
  const OptionScope({
    super.key,
    required super.child,
    required this.state,
  });

  final _OptionInitWidgetState state;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}


class OptionInitWidget extends StatefulWidget {
  const OptionInitWidget({
    super.key,
    required this.child,
    required this.initialOptions,
  });

  final Widget child;
  final AppOptions initialOptions;

  @override
  State<OptionInitWidget> createState() => _OptionInitWidgetState();
}

class _OptionInitWidgetState extends State<OptionInitWidget> {
  late AppOptions currentOptions;

  @override
  void initState() {
    currentOptions = widget.initialOptions;
    super.initState();
  }

  void update(AppOptions newOptions) {
    if (currentOptions != newOptions) {
      setState(() {
        currentOptions = newOptions;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return OptionScope(
      state: this,
      child: widget.child,
    );
  }
}
