part of product_detail;

class _ProductDetailViewState extends TTState<_ProductDetailModel, _ProductDetailView> {
  @override
  Widget buildWithModel(BuildContext context, _ProductDetailModel model) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 371,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: TTNetworkImage(
                    imageUrl: 'https://wallpaperaccess.com/full/2022327.jpg',
                  ),
                ),
              ),
              Positioned(
                top: 8 + device.padding.top,
                left: 25,
                right: 25,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: model.onBackPressed,
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: model.onSharePressed,
                      icon: Image.asset(Id.ic_share),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 31),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Naturel Red Apple',
                      style: St.body24700,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Image.asset(model.isLove ? Id.ic_love_green : Id.ic_love),
                      onPressed: model.onLovePressed,
                    )
                  ],
                ),
                const SizedBox(height: 11),
                Text(
                  '1kg, Price',
                  style: St.body16600.copyWith(color: Cl.cl7C7C7C),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Image.asset(Id.ic_minus),
                    const SizedBox(width: 20),
                    Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(color: Cl.clE2E2E2),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: St.body18600.copyWith(color: Cl.cl181725),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      Id.ic_plus,
                      color: Cl.cl53B175,
                    ),
                    const Spacer(),
                    Text(
                      '\$4.99',
                      style: St.body24700.copyWith(color: Cl.cl181725),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  height: 1,
                  color: Cl.clE2E2E2.withOpacity(0.7),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
