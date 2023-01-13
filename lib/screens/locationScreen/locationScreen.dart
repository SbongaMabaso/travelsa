import 'package:flutter/material.dart';
import 'package:travelsa/widgets/locationTile.dart';
import '../../widgets/imageBanner.dart';
import 'textSection.dart';
import '../../models/location.dart';

class LocationScreen extends StatelessWidget {
  final int _locationID;

  const LocationScreen(this._locationID, {super.key});

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(assetPath: location.imagePath),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
                child: LocationTile(location: location),
              ),
              ...textSections(location),
            ]), //using Cascade to invoke Dart's addAll function
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
