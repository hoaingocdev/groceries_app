import 'package:flutter/material.dart';

import '../res/res.dart';

class TTButtonCircle extends StatelessWidget {
  final VoidCallback? onPressed;
  const TTButtonCircle({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 67,
        width: 67,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Cl.cl53B175,
        ),
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Cl.white,
        ),
      ),
    );
  }
}
