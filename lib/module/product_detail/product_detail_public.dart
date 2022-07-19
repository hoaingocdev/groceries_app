library product_detail;

import 'package:flutter/material.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'product_detail_view.dart';
part 'product_detail_model.dart';
part 'product_detail_state.dart';

ChangeNotifierProvider<_ProductDetailModel> createProductDetail() {
  return ChangeNotifierProvider<_ProductDetailModel>(
    create: (_) => _ProductDetailModel(),
    child: _ProductDetailView(),
  );
}
