part of product_detail;

class _ProductDetailModel extends TTChangeNotifier<_ProductDetailView> {
  bool isLove = false;

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onSharePressed() {}

  void onLovePressed() {
    isLove = !isLove;
    notifyListeners();
  }

  void onAddToBasket() {}
}
