import 'package:flutter/material.dart';
import 'package:my_calculator_/screen.dart';
import 'package:my_calculator_/state_manager/provider.dart';
import 'package:my_calculator_/theme/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return ChangeNotifierProvider<ThemeChanger>(
    create:(_) => ThemeChanger(),
    child: Consumer<ThemeChanger>(
      builder: (BuildContext context, themeChanger, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          themeMode: themeChanger.themeMode,
          darkTheme: Themes.dark,
          home: const CalcSreen(),
        );
      }),
    );
  }
}


     