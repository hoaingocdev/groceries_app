library filters;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'filters_view.dart';
part 'filters_model.dart';
part 'filters_state.dart';
part 'List/list_categories.p.dart';
part 'List/item.p.dart';
part 'List/list_brand.p.dart';

ChangeNotifierProvider<_FiltersModel> createFilters() {
  return ChangeNotifierProvider<_FiltersModel>(
    create: (_) => _FiltersModel(),
    child: _FiltersView(),
  );
}
