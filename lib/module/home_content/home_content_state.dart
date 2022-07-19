part of home_content;

class _HomeContentViewState extends TTState<_HomeContentModel, _HomeContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeContentModel model) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildTitle(model),
            const SizedBox(height: 30),
            buildName(text: 'Exclusive Offer'),
            const SizedBox(height: 20),
            const ListProducts(),
            const SizedBox(height: 30),
            buildName(text: 'Best Selling'),
            const SizedBox(height: 20),
            const ListProducts(),
            const SizedBox(height: 30),
            buildName(text: 'BGroceries'),
            const SizedBox(height: 20),
            buildListGroceriesItem(),
            const SizedBox(height: 20),
            const ListProducts(),
            const SizedBox(height: 37),
          ],
        ),
      ),
    );
  }

  Padding buildListGroceriesItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 105,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, i) {
            return const SizedBox(width: 10);
          },
          itemCount: 10,
          itemBuilder: (_, i) {
            return builItemGroceries(
              foodInfo: model.foods[i],
            );
          },
        ),
      ),
    );
  }

  Container builItemGroceries({required FoodInfo foodInfo}) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 17, right: 17),
      height: 105,
      width: 248,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: foodInfo.backgroundColor,
      ),
      child: Row(
        children: [
          Image.network(
            foodInfo.imageUrl,
            height: 72,
            width: 72,
          ),
          const SizedBox(width: 15),
          Text(
            foodInfo.name,
            style: St.body20600.copyWith(color: Cl.cl3E423F),
          )
        ],
      ),
    );
  }

  Widget buildName({
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(
            text,
            style: St.body24600.copyWith(color: Cl.cl181725),
          ),
          const Spacer(),
          Text(
            'See all',
            style: St.body16600.copyWith(color: Cl.cl53B175),
          ),
        ],
      ),
    );
  }

  Widget buildTitle(_HomeContentModel model) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 58 + device.padding.top),
          child: Center(
            child: Image.asset(
              Id.img_background_carrot,
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Id.ic_location),
            const SizedBox(width: 7),
            Text(
              'Dhaka, Banassre',
              style: St.body18600.copyWith(color: Cl.cl4C4F4D),
            )
          ],
        ),
        const SizedBox(height: 20),
        const TTButtonSearch(),
        const SizedBox(height: 20),
        CarouselSlider(
          items: model.carouselImage.map((e) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 115,
                // width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Id.ic_background3,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            clipBehavior: Clip.none,
            height: 115,
            autoPlay: true,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            autoPlayInterval: const Duration(seconds: 2),
          ),
        ),
      ],
    );
  }
}
