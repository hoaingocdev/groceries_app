import 'package:flutter/material.dart';
import 'package:groceries_app/res/res.dart';

class TTButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Widget? child;
  final String? text;
  final double? height;
  const TTButton({
    Key? key,
    this.onPressed,
    this.backgroundColor = Cl.cl53B175,
    this.child,
    this.text,
    this.height = 67,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: backgroundColor,
        ),
        child: child ??
            Center(
              child: Text(
                text ?? '',
                style: St.body18600.copyWith(color: Cl.white),
              ),
            ),
      ),
    );
  }
}
