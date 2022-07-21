part of order_failed;

class _OrderFailedModel extends TTChangeNotifier<_OrderFailedView> {
  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onBackToHomePressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createHome();
    }));
  }
}
