part of search;

class _SearchModel extends TTChangeNotifier<_SearchView> {
  final products = <ProductsInfo>[];

  _SearchModel() {
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

  void onClosedPressed() {}

  void onFiltersPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createFilters();
    }));
  }
}
