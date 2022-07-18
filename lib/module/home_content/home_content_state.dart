part of home_content;

class _HomeContentViewState extends TTState<_HomeContentModel, _HomeContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeContentModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
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
            Container(
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Cl.clF2F3F2,
              ),
              padding: const EdgeInsets.fromLTRB(15, 16, 10, 17),
              child: Row(
                children: [
                  Image.asset(Id.ic_search),
                  const SizedBox(width: 9),
                  Text(
                    'Search Store',
                    style: St.body14600.copyWith(color: Cl.cl7C7C7C),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            // CarouselSlider(items: items, options: options)
          ],
        ),
      ),
    );
  }
}
