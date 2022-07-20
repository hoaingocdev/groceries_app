part of checkout_bottom_sheet;

class _CheckoutBottomSheetViewState extends TTState<_CheckoutBottomSheetModel, _CheckoutBottomSheetView> {
  @override
  Widget buildWithModel(BuildContext context, _CheckoutBottomSheetModel model) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
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
          ),
          const SizedBox(height: 30),
          Container(
            height: 1,
            color: Cl.clE2E2E2.withOpacity(0.7),
          ),
          buildItem(
            title: 'Delivery',
            text: 'Select Method',
          ),
          buildItem(
            title: 'Promo Code',
            text: 'Pick discount',
          ),
          buildItem(
            title: 'Total Cost',
            text: '\$13.97',
          ),
        ],
      ),
    );
  }

  Widget buildItem({
    required String title,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                title,
                style: St.body18600.copyWith(color: Cl.cl7C7C7C),
              ),
              const Spacer(),
              Text(
                text,
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
