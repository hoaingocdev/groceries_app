import 'package:flutter/material.dart';

import '../res/res.dart';

class TTButtonCircle extends StatelessWidget {
  final VoidCallback? onPressed;

  const TTButtonCircle({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: onPressed == null ? Cl.cl7C7C7C : Cl.cl53B175,
      borderRadius: BorderRadius.all(Radius.circular(35)),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 67,
          width: 67,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Cl.white,
          ),
        ),
      ),
    );
  }
}
