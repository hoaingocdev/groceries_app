part of filters;

class ListBrand extends StatelessWidget {
  const ListBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<_FiltersModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brand',
          style: St.body24600.copyWith(color: Cl.cl181725),
        ),
        SizedBox(height: 25),
        Item(
          text: 'Individual Callection',
          value: model.isCheckIndividualCallection,
          onChanged: model.onIndividualCallectionChanged,
        ),
        Item(
          text: 'Cocola',
          value: model.isCheckCocola,
          onChanged: model.onCocolaChanged,
        ),
        Item(
          text: 'Ifad',
          value: model.isCheckIfad,
          onChanged: model.onIfadChanged,
        ),
        Item(
          text: 'Kazi Farmas',
          value: model.isCheckKaziFarmas,
          onChanged: model.onKaziFarmasChanged,
        ),
      ],
    );
  }
}
