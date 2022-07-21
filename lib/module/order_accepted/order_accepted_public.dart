library order_accepted;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'order_accepted_view.dart';
part 'order_accepted_model.dart';
part 'order_accepted_state.dart';

ChangeNotifierProvider<_OrderAcceptedModel> createOrderAccepted() {
  return ChangeNotifierProvider<_OrderAcceptedModel>(
    create: (_) => _OrderAcceptedModel(),
    child: _OrderAcceptedView(),
  );
}
