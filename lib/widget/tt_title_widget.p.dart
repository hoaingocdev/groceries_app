import 'package:flutter/material.dart';

import '../res/res.dart';

class TTTitle extends StatelessWidget {
  final double top;
  final VoidCallback? onPressed;
  final String title;
  const TTTitle({
    Key? key,
    this.top = 8,
    this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: top,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Cl.cl030303,
            ),
          ),
        ),
        const SizedBox(height: 66),
        Text(
          title,
          style: St.body26600.copyWith(color: Cl.cl181725),
        )
      ],
    );
  }
}
