part of order_accepted;

class _OrderAcceptedModel extends TTChangeNotifier<_OrderAcceptedView> {
  void onBackToHomePressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createHome();
    }));
  }

  void onTrackOrder() {}
}
