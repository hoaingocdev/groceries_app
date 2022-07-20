part of filters;

class ListCategories extends StatelessWidget {
  const ListCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_FiltersModel>();

    return Column(
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
        Item(
          value: model.isCheckEggs,
          onChanged: model.onEggChanged,
          text: 'Eggs',
        ),
        // const SizedBox(height: 10),
        Item(
          value: model.isCheckNoodles,
          text: 'Noodles & Pasta',
          onChanged: model.onNoodlesChanged,
        ),
        Item(
          value: model.isCheckChip,
          text: 'Chips & Crisps',
          onChanged: model.onChipChanged,
        ),
        Item(
          value: model.isCheckFastFood,
          text: 'Fast Food',
          onChanged: model.onFastFoodPressed,
        )
      ],
    );
  }
}
