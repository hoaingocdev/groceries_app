part of filters;

class _FiltersViewState extends TTState<_FiltersModel, _FiltersView> {
  @override
  Widget buildWithModel(BuildContext context, _FiltersModel model) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8 + device.padding.top),
                child: Center(
                  child: Text(
                    'Filters',
                    style: St.body20700.copyWith(color: Cl.cl181725),
                  ),
                ),
              ),
              const SizedBox(height: 31),
              Container(
                height: 735,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Cl.clF2F3F2,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      const ListCategories(),
                      const SizedBox(height: 42),
                      const ListBrand(),
                      const Spacer(),
                      TTButton(
                        text: 'Apply Filter',
                        onPressed: model.onApplyFilter,
                      ),
                      const SizedBox(
                        height: 22,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: device.padding.top,
            left: 25,
            child: IconButton(
              onPressed: model.onClosePressed,
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
