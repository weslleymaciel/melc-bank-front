import 'package:flutter/material.dart';
import 'package:melcbank/pages/login.page.dart';
import 'package:melcbank/pages/register.page.dart';
import 'package:melcbank/pages/reset.password.page.dart';
import 'my.constants.dart';
import "package:i18n_extension/i18n_widget.dart";
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MyConstants(
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(
            0xFFFFFFFF,
            {
              50: const Color(0xFFEEEEEE),
              100: const Color(0xFFDDDDDD),
              200: const Color(0xFFCCCCCC),
              300: const Color(0xFFBBBBBB),
              400: const Color(0xFFAAAAAA),
              500: const Color(0xFF999999),
              600: const Color(0xFF888888),
              700: const Color(0xFF777777),
              800: const Color(0xFF666666),
              900: const Color(0xFF555555),
            }
        ),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('pt', "BR"),
      ],
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/reset_password': (context) => ResetPasswordPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
