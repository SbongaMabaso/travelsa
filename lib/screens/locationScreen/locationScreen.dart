import 'package:flutter/material.dart';
import 'imageBanner.dart';
import 'textSection.dart';
import '../../models/location.dart';

class LocationScreen extends StatelessWidget {
  // const LocationScreen({super.key});
  final int _locationID;

  LocationScreen(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
            ...textSections(location),
          ]), //using Cascade to invoke Dart's addAll function
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}