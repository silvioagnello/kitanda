import 'package:flutter/material.dart';
import 'package:kitanda/src/auth/views/sign_in_screen.dart';
import 'package:kitanda/src/commons/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitanda',
      themeMode: ThemeMode.light,
      theme: appTheme(), //MaterialTheme.appTheme,
      // theme: const MaterialTheme(TextTheme()).light(),
      // theme: ThemeData(
      //   colorScheme: MaterialTheme.lightMediumContrastScheme().toColorScheme(),
      //   //brightness: Brightness.light,
      //
      //   useMaterial3: true,
      //   // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      // ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.darkMediumContrastScheme().toColorScheme(),
      ),
      home: const SignInScreen(title: 'Kitanda'),
    );
  }
}
