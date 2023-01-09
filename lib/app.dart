import 'package:flutter/material.dart';
import 'package:travelsa/screens/locations/locations.dart';
import 'package:travelsa/style.dart';
// import 'style.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Locations(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                // ignore: deprecated_member_use
                textTheme: TextTheme(title: AppBarTextStyle)),
            textTheme: const TextTheme(
              title: TitleTextStyle,
              body1: Body1TextStyle,
            )));
  }
}
