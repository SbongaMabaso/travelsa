import 'package:flutter/material.dart';
import 'package:travelsa/widgets/locationTile.dart';
import '../../models/location.dart';

class TextOverlay extends StatelessWidget {
  final Location location;

  TextOverlay(this.location);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: LocationTile(location: location, darkTheme: true),
        ),
      ],
    );
  }
}
