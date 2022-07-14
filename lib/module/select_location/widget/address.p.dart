part of select_location;

class Address extends StatelessWidget {
  final String title;
  final String text;
  final Function(ZoneInfo)? onZoneSelected;
  final Function(AreaInfo)? onAreaSelected;
  final List<dynamic> list;

  const Address({
    Key? key,
    required this.title,
    required this.text,
    this.onZoneSelected,
    this.onAreaSelected,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: St.body16600.copyWith(color: Cl.cl7C7C7C),
          ),
          Row(
            children: [
              Text(
                text,
                style: St.body18500.copyWith(color: Cl.cl181725),
              ),
              const Spacer(),
              const Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Cl.cl7C7C7C,
              ),
            ],
          ),
          Container(
            height: 1,
            color: Cl.clE2E2E2,
          )
        ],
      ),
      itemBuilder: (_) {
        return List.generate(list.length, (index) {
          final item = list[index];
          return PopupMenuItem(
            value: item,
            child: Text(item.valueDisplay),
          );
        });
      },
      onSelected: (value) {
        if (value is ZoneInfo) {
          onZoneSelected?.call(value);
        }
        if (value is AreaInfo) {
          onAreaSelected?.call(value);
        }
      },
    );
  }
}
