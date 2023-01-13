import './locationFacts.dart';
import 'package:meta/meta.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.userItinerarySummary,
    required this.tourPackageName,
    required this.facts,
  });

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: 'Durban, uShaka Marine Wolrd',
          imagePath: 'assets/images/uShaka_Marine_World.png',
          userItinerarySummary: 'Day 1: 10:00AM - 16:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
      Location(
          id: 2,
          name: 'Drakensberg sun',
          imagePath: 'assets/images/drakensberg_sun.jpg',
          userItinerarySummary: 'Day 1: 10:00AM - 16:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
      Location(
          id: 3,
          name: 'Jhb, Sterkfontein Caves',
          imagePath: 'assets/images/Sterkfontein_Caves.jpg',
          userItinerarySummary: 'Day 1: 10:00AM - 16:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }

  static Location? fetchByID(int locationID) {
    //fetch all location and iterate them, till we find the location id we looking for
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
