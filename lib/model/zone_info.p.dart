import 'package:flutter/material.dart';

class ZoneInfo extends ChangeNotifier {
  final _data = {};
  String get zoneName => _data['zoneName'] ?? '';
  String get valueDisplay => zoneName;

  ZoneInfo.from(Map e) {
    _data.addAll(e);
  }
}
