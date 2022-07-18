part of home;

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    return Scaffold(
      bottomNavigationBar: buildNavigationBar(model),
      body: buildBody(model),
    );
  }

  Widget buildBody(_HomeModel model) {
    switch (model.pageIndex) {
      case 0:
        return createHomeContent();
      case 1:
        return createExplore();
      case 2:
        return createCart();
      case 3:
        return createFavourite();
      case 4:
        return createAccount();
      default:
        return const SizedBox();
    }
  }

  Widget buildNavigationBar(_HomeModel model) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_store,
            color: model.pageIndex == 0 ? Cl.cl53B175 : Cl.cl181725,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_explore,
            color: model.pageIndex == 1 ? Cl.cl53B175 : Cl.cl181725,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_cart,
            color: model.pageIndex == 2 ? Cl.cl53B175 : Cl.cl181725,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_favourite,
            color: model.pageIndex == 3 ? Cl.cl53B175 : Cl.cl181725,
          ),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Id.ic_user,
            color: model.pageIndex == 4 ? Cl.cl53B175 : Cl.cl181725,
          ),
          label: 'Account',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      onTap: model.onPagePressed,
      currentIndex: model.pageIndex,
      selectedItemColor: Cl.cl53B175,
      unselectedItemColor: Cl.cl181725,
      selectedLabelStyle: St.body12600,
      unselectedLabelStyle: St.body12600,
    );
  }
}
