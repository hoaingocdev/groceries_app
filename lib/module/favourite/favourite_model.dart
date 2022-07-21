part of favourite;

class _FavouriteModel extends TTChangeNotifier<_FavouriteView> {
  final products = <ProductsInfo>[];

  _FavouriteModel() {
    _initData();
  }

  void _initData() {
    final lsProduct = List.generate(10, (index) {
      return ProductsInfo.from({
        'imageUrl': 'http://img.websosanh.vn/v2/users/root_product/images/nuoc-ngot-fanta-cam-15l/t4z52ixkl08ga.jpg',
        'foodName': 'foodName$index',
        'amount': 'amount$index, Priceg',
        'price': 4.99,
      });
    });
    products.addAll(lsProduct);
  }

  void onAddAllToCart() {}
}
