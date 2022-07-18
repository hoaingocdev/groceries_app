part of home_content;

class ListProducts extends StatelessWidget {
  const ListProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_HomeContentModel>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 265,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, i) => const SizedBox(width: 20),
          itemCount: model.products.length,
          itemBuilder: (_, i) {
            return builItem(productsInfo: model.products[i], onPressed: model.onProductDetailPressed);
          },
        ),
      ),
    );
  }

  Widget builItem({
    required ProductsInfo productsInfo,
    VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(left: 25, right: 14),
        height: 265,
        width: 173,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Cl.cl7C7C7C),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Image.network(
                productsInfo.imageUrl,
                width: 97,
                height: 85,
              ),
            ),
            const SizedBox(height: 22),
            Text(
              productsInfo.foodName,
              style: St.body16700.copyWith(color: Cl.cl181725),
            ),
            const SizedBox(height: 5),
            Text(
              productsInfo.amount,
              style: St.body14500.copyWith(color: Cl.cl7C7C7C),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  productsInfo.priceDisplay,
                  style: St.body18600.copyWith(color: Cl.cl181725),
                ),
                const Spacer(),
                TTButtonCircle(
                  height: 46,
                  width: 46,
                  borderRadius: BorderRadius.circular(17),
                  child: Image.asset(Id.ic_plus),
                  backgroundColor: Cl.cl53B175,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
