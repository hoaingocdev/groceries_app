part of beverages;

class _BeveragesViewState extends TTState<_BeveragesModel, _BeveragesView> {
  @override
  Widget buildWithModel(BuildContext context, _BeveragesModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8 + device.padding.top),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: model.onBackPressed,
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    'Beverages',
                    style: St.body20700.copyWith(color: Cl.cl181725),
                  ),
                  IconButton(
                    onPressed: model.onFillPressed,
                    icon: Image.asset(Id.ic_fill),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 500 / 800,
                ),
                itemBuilder: (_, i) {
                  return Container(
                    height: 800,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Cl.clE2E2E2),
                    ),
                    child: TTProducts(
                      productsInfo: model.products[i],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
