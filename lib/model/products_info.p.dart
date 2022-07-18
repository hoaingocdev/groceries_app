import 'package:flutter/material.dart';

class ProductsInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get foodName => _data['foodName'] ?? '';
  String get amount => _data['amount'] ?? '';
  double get price => _data['price'] ?? 0.0;

  String get priceDisplay => '\$$price';

  ProductsInfo.from(Map e) {
    _data.addAll(e);
  }
}
