import 'package:flutter/material.dart';
import 'imageBanner.dart';
import 'textSection.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcom to TravelSA'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ImageBanner("assets/images/uShaka_Marine_World.png"),
            TextSection("Title 1", "Body Text"),
            TextSection("Title 2", "Body Text"),
            TextSection("Title 3", "Body Text"),
          ]),
    );
  }
}
