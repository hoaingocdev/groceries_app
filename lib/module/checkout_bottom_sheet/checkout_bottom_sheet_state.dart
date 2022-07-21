part of checkout_bottom_sheet;

class _CheckoutBottomSheetViewState extends TTState<_CheckoutBottomSheetModel, _CheckoutBottomSheetView> {
  @override
  Widget buildWithModel(BuildContext context, _CheckoutBottomSheetModel model) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            buildTitle(model),
            const SizedBox(height: 30),
            Container(
              height: 1,
              color: Cl.clE2E2E2.withOpacity(0.7),
            ),
            PopupMenu(
              onDeliverySelected: (v) => model.onDeliverySelected(v),
              list: model.deliveries,
              title: 'Delivery',
              text: model.deliveryDisplay,
            ),
            PopupMenu(
              list: model.promoCodes,
              onPromoCodeSelected: (v) => model.onPromoCodeSeleted(v),
              title: 'Promo Code',
              text: model.promoCodeDisplay,
            ),
            PopupMenu(
              onPamentSelected: (v) => model.onPamentSelected(v),
              list: model.paments,
              title: 'Pament',
              image: Image.asset(model.pamentDisplay),
            ),
            buildTotalCost(),
            const SizedBox(height: 20),
            buildText(),
            const SizedBox(height: 27),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TTButton(
                text: 'Place Order',
                onPressed: model.onPlaceOrderPressed,
              ),
            ),
            const SizedBox(height: 27),
          ],
        ),
      ),
    );
  }

  Widget buildText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: RichText(
        text: TextSpan(
          text: 'By placing an order you agree to our',
          style: St.body14600.copyWith(color: Cl.cl7C7C7C),
          children: [
            TextSpan(
              text: ' Terms',
              style: St.body14600.copyWith(color: Cl.cl181725),
            ),
            const TextSpan(
              text: ' And',
            ),
            TextSpan(
              text: ' Conditions',
              style: St.body14600.copyWith(color: Cl.cl181725),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTitle(_CheckoutBottomSheetModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(
            'Checkout',
            style: St.body24600.copyWith(color: Cl.cl181725),
          ),
          const Spacer(),
          IconButton(
            onPressed: model.onClosedPressed,
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }

  Widget buildTotalCost() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                'Total Cost',
                style: St.body18600.copyWith(color: Cl.cl7C7C7C),
              ),
              const Spacer(),
              Text(
                '\$13.97',
                style: St.body16600.copyWith(color: Cl.cl181725),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.arrow_forward_ios, size: 15),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 1,
            color: Cl.clE2E2E2.withOpacity(0.7),
          ),
        ],
      ),
    );
  }
}
