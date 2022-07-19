part of beverages;

class _BeveragesModel extends TTChangeNotifier<_BeveragesView> {
  final products = <ProductsInfo>[];
  _BeveragesModel() {
    _initData();
  }

  void _initData() {
    final lsProduct = List.generate(100, (index) {
      return ProductsInfo.from({
        'imageUrl': 'https://dep.anh9.com/imgs/131223hinh-nen-trai-cay-dua-chin-vang-tuoi.jpg',
        'foodName': 'foodName$index',
        'amount': 'amount$index, Priceg',
        'price': 4.99,
      });
    });
    products.addAll(lsProduct);
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onFillPressed() {}
}
