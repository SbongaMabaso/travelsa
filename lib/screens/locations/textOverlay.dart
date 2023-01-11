import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/imageBanner.dart';

class TextOverlay extends StatelessWidget {
  final Location location;

  TextOverlay(this.location);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        padding: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(color: Colors.black.withOpercity),
        child: 
      ],
    )
  }
}
