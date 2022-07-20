part of cart;

class _CartModel extends TTChangeNotifier<_CartView> {
  final products = <ProductsInfo>[];

  _CartModel() {
    _initData();
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

  void onClearPressed(int index) {
    products.removeAt(index);
    notifyListeners();
  }

  void onCheckoutPressed() {
    showCheckoutBottomSheet(context);
  }
}
