part of cart;

class _CartModel extends TTChangeNotifier<_CartView> {
  void onClearPressed(int index) {
    cartSrv.removeItem(index);
  }

  void onCheckoutPressed() {
    showCheckoutBottomSheet(context);
  }
}
