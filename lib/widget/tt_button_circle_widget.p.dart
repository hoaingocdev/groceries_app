import 'package:flutter/material.dart';

import '../res/res.dart';

class TTButtonCircle extends StatelessWidget {
  final VoidCallback? onPressed;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final Widget? child;
  final Color? backgroundColor;

  const TTButtonCircle({
    Key? key,
    this.onPressed,
    this.borderRadius,
    this.height = 67,
    this.width = 67,
    this.child,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor = Cl.cl53B175;
    if (onPressed == null) {
      bgColor = backgroundColor ?? Cl.cl7C7C7C;
    }
    return Material(
      color: bgColor,
      borderRadius: borderRadius ??
          const BorderRadius.all(
            Radius.circular(35),
          ),
      child: InkWell(
        borderRadius: BorderRadius.circular(35),
        onTap: onPressed,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(35),
          ),
          child: child ??
              const Icon(
                Icons.arrow_forward_ios,
                color: Cl.white,
              ),
        ),
      ),
    );
  }
}
