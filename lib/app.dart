import 'package:flutter/material.dart';
import 'package:travelsa/screens/location/location.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LocationScreen());
  }
}