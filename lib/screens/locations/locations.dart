import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../widgets/imageBanner.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('Locations'),
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _itemBuilder(context, locations[index]),
        ));
  }

  void _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationScreenRoute,
        arguments: {'id': locationID});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
        onTap: () => _onLocationTap(context, location.id),
        child: Container(
            child: Stack(children: [
          ImageBanner(location.imagePath),
          TextOverlay(location),
        ])));
  }
}
