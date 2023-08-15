import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clean/core/di/di.dart';
import 'package:clean/core/router/app_router.dart';

import 'core/common/res/colors.dart';
import 'core/common/res/dimens.dart';
import 'core/common/res/text_styles.dart';
import 'core/common/util/border_radius.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    // DeviceOrientation.portraitUp,
  ]);
  configureDependencies(environment: Env.dev);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    const faLocale = Locale("fa", "IR");

    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [faLocale],
      locale: faLocale,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: COLOR_PRIMARY,
        scaffoldBackgroundColor: BACKGROUND_LIGHT_COLOR,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: APP_BAR_ELEVATION,
          backgroundColor: APPBAR_BACKGROUND_LIGHT_COLOR,
          iconTheme: const IconThemeData(
            color: COLOR_PRIMARY,
          ),
          titleTextStyle: TextStyles.normalBold.copyWith(
            color: COLOR_PRIMARY,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: TEXT_FIELD_BACKGROUND_LIGHT_COLOR,
          hintStyle: TextStyles.normal,
          contentPadding: const EdgeInsets.all(spacing_3x),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: TEXT_FIELD_BORDER_LIGHT_COLOR),
            borderRadius: defaultBorderRadiusNormal,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: TEXT_FIELD_ENABLED_BORDER_LIGHT_COLOR
                  .withOpacity(BORDER_OPACITY),
            ),
            borderRadius: defaultBorderRadiusNormal,
          ),
          errorStyle: TextStyles.small.copyWith(
            color: TEXT_ERROR_COLOR,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: defaultBorderRadiusNormal,
            borderSide: const BorderSide(color: TEXT_ERROR_COLOR),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: defaultBorderRadiusNormal,
            borderSide: const BorderSide(color: TEXT_ERROR_COLOR),
          ),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.selected)
                ? SWITCH_CHECKED_THUMB_COLOR
                : SWITCH_NOT_CHECKED_THUMB_COLOR,
          ),
          trackColor: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.selected)
                ? SWITCH_CHECKED_TRACK_COLOR
                : SWITCH_NOT_CHECKED_TRACK_COLOR,
          ),
        ),
        textTheme: TextTheme(
          labelLarge: TextStyles.small, // Snackbar Action Button
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: COLOR_SECONDARY,
        ),
      ),
    );
  }
}
