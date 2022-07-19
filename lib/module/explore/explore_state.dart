part of explore;

class _ExploreViewState extends TTState<_ExploreModel, _ExploreView> {
  @override
  Widget buildWithModel(BuildContext context, _ExploreModel model) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8 + device.padding.top),
            child: Center(
              child: Text(
                'Find Products',
                style: St.body20700.copyWith(color: Cl.cl181725),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const TTButtonSearch(),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (_, i) {
                  return buildItem(
                    productsInfo: model.products[i],
                    onPressed: model.onBeveragesPressed,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildItem({
    required ProductsInfo productsInfo,
    VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(31, 28, 31, 15),
        height: 189,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Cl.cl53B175.withOpacity(0.1),
          border: Border.all(
            color: Cl.cl53B175.withOpacity(0.7),
          ),
        ),
        child: Column(
          children: [
            TTNetworkImage(
              imageUrl: productsInfo.imageUrl,
            ),
            const SizedBox(height: 27),
            Align(
              alignment: Alignment.center,
              child: Text(
                productsInfo.foodName,
                style: St.body16700.copyWith(color: Cl.cl181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
