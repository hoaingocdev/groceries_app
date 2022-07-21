import 'package:flutter/material.dart';

class DeliveryInfo extends ChangeNotifier {
  final _data = {};

  String get delivery => _data['delivery'] ?? '';
  String get valueDisplay => delivery;

  DeliveryInfo.from(Map e) {
    _data.addAll(e);
  }
}
