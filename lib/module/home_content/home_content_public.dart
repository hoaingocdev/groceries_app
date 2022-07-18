library home_content;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/module/product_detail/product_detail_public.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'home_content_view.dart';
part 'home_content_model.dart';
part 'home_content_state.dart';
part 'List/list_products.p.dart';

ChangeNotifierProvider<_HomeContentModel> createHomeContent() {
  return ChangeNotifierProvider<_HomeContentModel>(
    create: (_) => _HomeContentModel(),
    child: _HomeContentView(),
  );
}
