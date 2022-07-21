part of favourite;

class _FavouriteViewState extends TTState<_FavouriteModel, _FavouriteView> {
  @override
  Widget buildWithModel(BuildContext context, _FavouriteModel model) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Cl.white,
        title: Text(
          'Favorurite',
          style: St.body20700.copyWith(color: Cl.cl181725),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (_, i) => Container(
                  height: 1,
                  color: Cl.clE2E2E2,
                ),
                itemCount: 10,
                itemBuilder: (_, i) {
                  return buildItem(
                    productsInfo: model.products[i],
                  );
                },
              ),
            ),
            const TTButton(
              text: 'Add All To Cart',
            )
          ],
        ),
      ),
    );
  }

  Widget buildItem({required ProductsInfo productsInfo}) {
    return Column(
      children: [
        const SizedBox(height: 36),
        Row(
          children: [
            TTNetworkImage(
              imageUrl: productsInfo.imageUrl,
              height: 54,
              width: 31,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productsInfo.foodName,
                  style: St.body16700.copyWith(color: Cl.cl181725),
                ),
                const SizedBox(height: 6),
                Text(
                  productsInfo.amount,
                  style: St.body14500.copyWith(color: Cl.cl7C7C7C),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  productsInfo.priceDisplay,
                  style: St.body16600.copyWith(color: Cl.cl181725),
                ),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            )
          ],
        ),
        const SizedBox(height: 36),
      ],
    );
  }
}
