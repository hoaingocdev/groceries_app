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
            return TTProducts(
              productsInfo: model.products[i],
              onPressed: model.onProductDetailPressed,
            );
          },
        ),
      ),
    );
  }
}
