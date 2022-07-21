part of checkout_bottom_sheet;

class PopupMenu extends StatelessWidget {
  final String title;
  final String? text;
  final Widget? image;
  final Function(dynamic)? onDeliverySelected;
  final Function(dynamic)? onPamentSelected;
  final Function(dynamic)? onPromoCodeSelected;
  final List<dynamic> list;

  const PopupMenu({
    Key? key,
    required this.title,
    this.text,
    this.image,
    this.onDeliverySelected,
    this.onPamentSelected,
    this.onPromoCodeSelected,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  title,
                  style: St.body18600.copyWith(color: Cl.cl7C7C7C),
                ),
                const Spacer(),
                image ??
                    Text(
                      text ?? '',
                      style: St.body16600.copyWith(color: Cl.cl181725),
                    ),
                const SizedBox(width: 15),
                const Icon(Icons.arrow_forward_ios, size: 15),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 1,
              color: Cl.clE2E2E2.withOpacity(0.7),
            ),
          ],
        ),
      ),
      itemBuilder: (_) {
        return List.generate(list.length, (index) {
          final item = list[index];
          return PopupMenuItem(
            child: Text(item.valueDisplay),
            value: item,
          );
        });
      },
      onSelected: (value) {
        if (value is DeliveryInfo) {
          onDeliverySelected?.call(value);
        }
        if (value is PamentInfo) {
          onPamentSelected?.call(value);
        }
        if (value is PromoCodeInfo) {
          onPromoCodeSelected?.call(value);
        }
      },
    );
  }
}
