part of order_failed;

class _OrderFailedViewState extends TTState<_OrderFailedModel, _OrderFailedView> {
  @override
  Widget buildWithModel(BuildContext context, _OrderFailedModel model) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Material(
          borderRadius: BorderRadius.circular(18),
          color: Cl.white,
          child: Container(
            // height: 602,
            padding: const EdgeInsets.fromLTRB(9, 11, 25, 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 48,
                      width: 48,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(9),
                        onTap: model.onBackPressed,
                        child: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      Image.asset(Id.img_background5),
                      const SizedBox(height: 49),
                      Text(
                        'Oops! Order Failed',
                        style: St.body28600.copyWith(color: Cl.cl181725),
                      ),
                      const SizedBox(height: 21),
                      Text(
                        'Something went tembly wrong.',
                        style: St.body16500.copyWith(color: Cl.cl7C7C7C),
                      ),
                      const SizedBox(height: 61),
                      const TTButton(text: 'Please Try Again'),
                      const SizedBox(height: 13),
                      InkWell(
                        onTap: model.onBackToHomePressed,
                        borderRadius: BorderRadius.circular(14),
                        child: SizedBox(
                          height: 48,
                          width: 200,
                          child: Center(
                            child: Text(
                              'Back to home',
                              style: St.body18600.copyWith(color: Cl.cl181725),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
