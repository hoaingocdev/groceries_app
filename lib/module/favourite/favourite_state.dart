part of favourite;

class _FavouriteViewState extends TTState<_FavouriteModel, _FavouriteView> {
  @override
  Widget buildWithModel(BuildContext context, _FavouriteModel model) {
    return const Scaffold(
      backgroundColor: Colors.pink,
    );
  }
}
