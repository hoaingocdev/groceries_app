import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/widget/widget.dart';

class TTProducts extends StatelessWidget {
  final VoidCallback? onPressed;
  final ProductsInfo productsInfo;
  const TTProducts({Key? key, this.onPressed, required this.productsInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(left: 25, right: 14),
        height: 265,
        width: 173,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Cl.cl7C7C7C),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: TTNetworkImage(
                imageUrl: productsInfo.imageUrl,
                width: 97,
                height: 85,
              ),
            ),
            const SizedBox(height: 22),
            Text(
              productsInfo.foodName,
              style: St.body16700.copyWith(color: Cl.cl181725),
            ),
            const SizedBox(height: 5),
            Text(
              productsInfo.amount,
              style: St.body14500.copyWith(color: Cl.cl7C7C7C),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  productsInfo.priceDisplay,
                  style: St.body18600.copyWith(color: Cl.cl181725),
                ),
                const Spacer(),
                TTButtonCircle(
                  height: 46,
                  width: 46,
                  borderRadius: BorderRadius.circular(17),
                  child: Image.asset(Id.ic_plus),
                  backgroundColor: Cl.cl53B175,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
