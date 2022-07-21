part of order_accepted;

class _OrderAcceptedViewState extends TTState<_OrderAcceptedModel, _OrderAcceptedView> {
  @override
  Widget buildWithModel(BuildContext context, _OrderAcceptedModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(Id.img_background2),
              const Spacer(),
              Image.asset(Id.img_background4),
            ],
          ),
          Positioned(
            top: 152,
            left: 25,
            right: 25,
            child: Column(
              children: [
                Image.asset(
                  Id.img_background_order,
                ),
                const SizedBox(height: 70),
                Text(
                  'Your Order has been accepted',
                  style: St.body28600.copyWith(color: Cl.cl181725),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Your items has been placcd and is on it’s way to being processed',
                  style: St.body16500.copyWith(color: Cl.cl7C7C7C),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 134),
                TTButton(
                  onPressed: model.onTrackOrder,
                  text: 'Track Order',
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: model.onBackToHomePressed,
                  child: Text(
                    'Back to home',
                    style: St.body18600.copyWith(color: Cl.cl181725),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
