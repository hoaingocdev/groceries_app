import 'package:flutter/material.dart';

class PamentInfo extends ChangeNotifier {
  final _data = {};
  String get pament => _data['pament'] ?? '';
  String get valueDisplay => pament;

  PamentInfo.from(Map e) {
    _data.addAll(e);
  }
}
