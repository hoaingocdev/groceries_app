import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';

CartService get cartSrv => CartService.shared();

class CartService extends ChangeNotifier {
  static CartService? _sInstance;
  final products = <ProductsInfo>[];

  CartService._() {
    _initData();
  }

  factory CartService.shared() {
    return _sInstance ??= CartService._();
  }
  void _initData() {
    final lsProduct = List.generate(10, (index) {
      return ProductsInfo.from({
        'imageUrl': 'https://dep.anh9.com/imgs/131223hinh-nen-trai-cay-dua-chin-vang-tuoi.jpg',
        'foodName': 'foodName$index',
        'amount': 'amount$index, Priceg',
        'price': 4.99,
      });
    });
    products.addAll(lsProduct);
  }

  void removeItem(int index) {
    if (index > products.length - 1) {
      return;
    }
    products.removeAt(index);
    if (products.isEmpty) {
      notifyListeners();
    }
  }

  void addItem(ProductsInfo value) {
    products.add(value);
    notifyListeners();
  }
}
