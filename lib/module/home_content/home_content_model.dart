part of home_content;

class _HomeContentModel extends TTChangeNotifier<_HomeContentView> {
  final products = <ProductsInfo>[];
  final foods = <FoodInfo>[];

  _HomeContentModel() {
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
    final lsFoods = List.generate(10, (index) {
      return FoodInfo.from({
        'imageUrl': 'https://vinhphat.net/images/home-pro.png',
        'name': 'name$index',
        'backgroundColor': index % 2 == 0 ? Cl.clF8A44C : Cl.cl53B175
      });
    });
    foods.addAll(lsFoods);

    products.addAll(lsProduct);
  }

  final List<String> carouselImage = [
    Id.img_background3,
    Id.img_background3,
    Id.img_background3,
  ];

  void onProductDetailPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createProductDetail();
    }));
  }
}
