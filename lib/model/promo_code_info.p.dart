import 'package:flutter/material.dart';

class PromoCodeInfo extends ChangeNotifier {
  final _data = {};
  String get promoCode => _data['promoCode'] ?? '';
  String get valueDisplay => promoCode;

  PromoCodeInfo.from(Map e) {
    _data.addAll(e);
  }
}
