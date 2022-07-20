part of explore;

class _ExploreModel extends TTChangeNotifier<_ExploreView> {
  final products = <ProductsInfo>[];

  _ExploreModel() {
    _initData();
  }

  void _initData() {
    final lsProduct = List.generate(100, (index) {
      return ProductsInfo.from({
        'imageUrl':
            'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2021/8/19/thuc-pham-huu-co-la-gi-1-min-1629389409360173188623.jpg',
        'foodName': 'foodName$index',
      });
    });
    products.addAll(lsProduct);
  }

  void onBeveragesPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createBeverages();
    }));
  }

  void onSearchPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createSearch();
    }));
  }
}
