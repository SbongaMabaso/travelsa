import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _horizontalPad = 16.0;
  const TextSection(this._title, this._body, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
                _horizontalPad, 32.0, _horizontalPad, 4.0),
            child: Text(_title, style: Theme.of(context).textTheme.subtitle1),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
                _horizontalPad, 10.0, _horizontalPad, _horizontalPad),
            child: Text(_body, style: Theme.of(context).textTheme.bodyText1),
          ),
        ]);
  }
}
