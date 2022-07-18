library cart;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'cart_view.dart';
part 'cart_model.dart';
part 'cart_state.dart';

ChangeNotifierProvider<_CartModel> createCart() {
  return ChangeNotifierProvider<_CartModel>(
    create: (_) => _CartModel(),
    child: _CartView(),
  );
}
