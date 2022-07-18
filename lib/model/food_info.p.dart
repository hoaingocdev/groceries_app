import 'package:flutter/material.dart';
import 'package:groceries_app/res/res.dart';

class FoodInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get name => _data['name'] ?? '';
  Color get backgroundColor => _data['backgroundColor'] ?? Cl.white;

  FoodInfo.from(Map e) {
    _data.addAll(e);
  }
}
