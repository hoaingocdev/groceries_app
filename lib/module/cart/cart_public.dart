library cart;

import 'package:deleteable_tile/deleteable_tile.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/service/service.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'cart_view.dart';
part 'cart_model.dart';
part 'cart_state.dart';

ChangeNotifierProvider<_CartModel> createCart({bool isFromHome = false}) {
  return ChangeNotifierProvider<_CartModel>(
    create: (_) => _CartModel(isFromHome),
    child: _CartView(),
  );
}
