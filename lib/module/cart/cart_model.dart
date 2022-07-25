part of cart;

class _CartModel extends TTChangeNotifier<_CartView> {
  final bool isFromHome;

  _CartModel(this.isFromHome);

  void onClearPressed(int index) {
    cartSrv.removeItem(index);
  }

  void onCheckoutPressed() {
    showCheckoutBottomSheet(context);
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }
}
