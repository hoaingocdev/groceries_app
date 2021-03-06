library checkout_bottom_sheet;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'checkout_bottom_sheet_view.dart';
part 'checkout_bottom_sheet_model.dart';
part 'checkout_bottom_sheet_state.dart';
part 'widget/popupMenu.p.dart';

Future showCheckoutBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    context: context,
    builder: (_) {
      return _createCheckoutBottomSheet();
    },
  );
}

ChangeNotifierProvider<_CheckoutBottomSheetModel> _createCheckoutBottomSheet() {
  return ChangeNotifierProvider<_CheckoutBottomSheetModel>(
    create: (_) => _CheckoutBottomSheetModel(),
    child: _CheckoutBottomSheetView(),
  );
}
