import 'package:flutter/material.dart';

class AreaInfo extends ChangeNotifier {
  final _data = {};
  String get areaName => _data['areaName'] ?? '';
  String get valueDisplay => areaName;

  AreaInfo.from(Map e) {
    _data.addAll(e);
  }
}
