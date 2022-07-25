part of search;

class _SearchModel extends TTChangeNotifier<_SearchView> {
  final TextEditingController controller;
  final products = <ProductsInfo>[];
  bool isShowClose = false;

  _SearchModel() : controller = TextEditingController() {
    _initData();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void validate() {
    isShowClose = controller.text.isNotEmpty;
    notifyListeners();
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

  void onClosedPressed() {
    controller.clear();
  }

  void onFiltersPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createFilters();
    }));
  }

  void onAddToCartPressed(ProductsInfo item) {
    cartSrv.addItem(item);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => createCart(),
      ),
    );
  }
}
