import 'package:flutter/material.dart';
import 'package:travelsa/screens/location/location.dart';
import 'package:travelsa/style.dart';
// import 'style.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const LocationScreen(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              // ignore: deprecated_member_use
              textTheme: TextTheme(title: AppBarTextStyle),
            ),
            textTheme: TextTheme(
              title: TitleTextStyle,
              body1: Body1TextStyle,
            )));
  }
}
