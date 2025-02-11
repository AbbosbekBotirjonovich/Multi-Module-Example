part of '/app.dart';

Widget getApp() => OptionInitWidget(
      initialOptions: AppOptions(
        themeMode: ThemeMode.light,
        locale: Locale("uz"),
      ),
      child: MainApp(),
    );

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///theme
      themeMode: context.options.themeMode,

      ///router
      navigatorKey: rootNavigatorKey,
      initialRoute: Routes.auth,
      onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),

      ///localization
      locale: context.options.locale,
      localizationsDelegates: AppLocalizationSetup.localizationsDelegate,
      supportedLocales: AppLocalizationSetup.supportedLocales,
    );
  }
}
