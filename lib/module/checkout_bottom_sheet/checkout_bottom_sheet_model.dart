part of checkout_bottom_sheet;

class _CheckoutBottomSheetModel extends TTChangeNotifier<_CheckoutBottomSheetView> {
  final deliveries = <DeliveryInfo>[];
  final paments = <PamentInfo>[];
  final promoCodes = <PromoCodeInfo>[];
  late PamentInfo? pament;
  late PromoCodeInfo? promoCode;
  late DeliveryInfo? delivery;

  String get pamentDisplay => pament?.pament ?? '';
  String get promoCodeDisplay => promoCode?.promoCode ?? '';
  String get deliveryDisplay => delivery?.delivery ?? '';

  _CheckoutBottomSheetModel() {
    _initData();
  }

  void _initData() {
    final lsDelivery = List.generate(4, (index) {
      return DeliveryInfo.from({
        'delivery': 'Method$index',
      });
    });

    final lsPament = List.generate(4, (index) {
      return PamentInfo.from({
        'pament': Id.ic_card,
      });
    });
    final lsPromoCode = List.generate(4, (index) {
      return PromoCodeInfo.from({
        'promoCode': 'promoCode$index',
      });
    });
    promoCodes.addAll(lsPromoCode);
    paments.addAll(lsPament);
    deliveries.addAll(lsDelivery);
    pament = paments.first;
    promoCode = promoCodes.first;
    delivery = deliveries.first;
  }

  void onClosedPressed() {
    Navigator.of(context).pop();
  }

  onPamentSelected(PamentInfo? value) {
    if (value == null) {
      return;
    }
    if (value == pament) {
      return;
    }
    pament = value;
    notifyListeners();
  }

  onPromoCodeSeleted(PromoCodeInfo? value) {
    if (value == null) {
      return;
    }
    if (value == promoCode) {
      return;
    }
    promoCode = value;
    notifyListeners();
  }

  onDeliverySelected(DeliveryInfo? value) {
    if (value == null) {
      return;
    }
    if (value == delivery) {
      return;
    }
    delivery = value;
    notifyListeners();
  }

  void onPlaceOrderPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createOrderAccepted();
    }));
  }
}
