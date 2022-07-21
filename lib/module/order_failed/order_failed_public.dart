library order_failed;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/home/home_public.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'order_failed_view.dart';
part 'order_failed_model.dart';
part 'order_failed_state.dart';

Future showOrderFailedDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) {
        return _createOrderFailed();
      });
}

ChangeNotifierProvider<_OrderFailedModel> _createOrderFailed() {
  return ChangeNotifierProvider<_OrderFailedModel>(
    create: (_) => _OrderFailedModel(),
    child: _OrderFailedView(),
  );
}
