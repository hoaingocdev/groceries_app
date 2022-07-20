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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Cl.clF2F3F2,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Categories',
                        style: St.body24600.copyWith(color: Cl.cl181725),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          activeColor: Cl.cl53B175,
                          value: true,
                          onChanged: model.onEggChanged,
                        ),
                        // SizedBox(width: 12),
                        Text(
                          'Eggs',
                          style: St.body16500.copyWith(color: Cl.cl181725),
                        )
                      ],
                    )
                  ],
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
