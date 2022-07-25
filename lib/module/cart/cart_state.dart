part of cart;

class _CartViewState extends TTState<_CartModel, _CartView> {
  @override
  Widget buildWithModel(BuildContext context, _CartModel model) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Cl.cl181725,
        leading: model.isFromHome
            ? null
            : InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: model.onBackPressed,
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                ),
              ),
        elevation: 0.5,
        backgroundColor: Cl.white,
        title: Text(
          'My Cart',
          style: St.body20700.copyWith(color: Cl.cl181725),
        ),
      ),
      body: Consum<CartService>(
        value: cartSrv,
        builder: (context, srv) {
          return Column(
            children: [
              Expanded(
                child:

                    // )
                    ListView.separated(
                  separatorBuilder: (_, i) {
                    return Container(
                      height: 1,
                      color: Cl.clE2E2E2,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                    );
                  },
                  itemCount: srv.products.length,
                  itemBuilder: (_, i) {
                    return buildListItem(
                      index: i,
                      productsInfo: srv.products[i],
                    );
                  },
                ),
              ),
              if (srv.products.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: SizedBox(
                    height: 80,
                    child: Center(
                      child: Stack(
                        children: [
                          TTButton(
                            onPressed: model.onCheckoutPressed,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Go to Checkout',
                                    style: St.body18600.copyWith(color: Cl.white),
                                  ),
                                ),
                              ],
                            ),
                            text: 'Go to Checkout',
                          ),
                          Positioned(
                            top: 23,
                            right: 24,
                            child: Container(
                              height: 22,
                              width: 43,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Cl.cl489E67,
                              ),
                              child: Center(
                                child: Text(
                                  '\$12.96',
                                  style: St.body12600.copyWith(color: Cl.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
            ],
          );
          Center(
            child: Text(
              'My Cart is Empty',
              style: St.body20700.copyWith(color: Cl.cl181725),
            ),
          );
        },
      ),
    );
  }

  Widget buildListItem({
    required ProductsInfo productsInfo,
    required int index,
  }) {
    return Deleteable(
      builder: (context, delete) {
        return Row(
          children: [
            TTNetworkImage(
              imageUrl: productsInfo.imageUrl,
              height: 64,
              width: 70,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            productsInfo.foodName,
                            style: St.body16700.copyWith(color: Cl.cl181725),
                          ),
                        ),
                        IconButton(
                          splashRadius: 10,
                          onPressed: () async {
                            await delete();
                            model.onClearPressed(index);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Cl.clB3B3B3,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      productsInfo.amount,
                      style: St.body14500.copyWith(color: Cl.cl7C7C7C),
                    ),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        buildItem(
                          imageAsset: Id.ic_minus,
                        ),
                        const SizedBox(width: 14),
                        Text(
                          '1',
                          style: St.body16600.copyWith(color: Cl.cl181725),
                        ),
                        const SizedBox(width: 14),
                        buildItem(
                          imageAsset: Id.ic_plus,
                          color: Cl.cl53B175,
                        ),
                        const Spacer(),
                        Text(
                          productsInfo.priceDisplay,
                          style: St.body18600.copyWith(color: Cl.cl181725),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Widget buildItem({
    required String imageAsset,
    Color? color,
  }) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: Cl.clF0F0F0,
        ),
      ),
      child: Image.asset(
        imageAsset,
        color: color,
      ),
    );
  }
}
