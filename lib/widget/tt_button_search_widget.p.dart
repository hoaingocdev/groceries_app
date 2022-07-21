import 'package:flutter/material.dart';
import 'package:groceries_app/res/res.dart';

class TTButtonSearch extends StatelessWidget {
  final double? top;
  final VoidCallback? onPressed;
  const TTButtonSearch({
    Key? key,
    this.top,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(15),
        child: Container(
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
      ),
    );
  }
}
