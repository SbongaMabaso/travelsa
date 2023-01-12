import 'package:flutter/material.dart';
import 'package:travelsa/screens/locationScreen/locationScreen.dart';
import 'package:travelsa/screens/locations/locations.dart';
import 'package:travelsa/style.dart';
// import 'style.dart';

const LocationsRoute = '/';
const LocationScreenRoute = '/locationScreen';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map arguments = (settings.arguments ?? {}) as Map;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationScreenRoute:
          screen = LocationScreen(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme:
            const AppBarTheme(textTheme: TextTheme(subtitle1: AppBarTextStyle)),
        textTheme: const TextTheme(
          subtitle1: TitleTextStyle, //title
          subtitle2: SubTitleTextStyle, //subtitle
          caption: CaptionTextStyle,
          bodyText1: Body1TextStyle, //body1
        ));
  }
}
