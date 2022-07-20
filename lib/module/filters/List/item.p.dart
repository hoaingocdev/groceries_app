part of filters;

class Item extends StatelessWidget {
  final bool? value;
  final Function(bool?)? onChanged;
  final String text;
  const Item({
    Key? key,
    this.value,
    this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: Cl.cl53B175,
          value: value,
          onChanged: onChanged,
        ),
        // SizedBox(width: 12),
        Text(
          text,
          style: St.body16500.copyWith(
            color: value == false ? Cl.cl181725 : Cl.cl53B175,
          ),
        )
      ],
    );
  }
}
