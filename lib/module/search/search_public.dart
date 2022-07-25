library search;

import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/service/service.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'search_view.dart';
part 'search_model.dart';
part 'search_state.dart';

ChangeNotifierProvider<_SearchModel> createSearch() {
  return ChangeNotifierProvider<_SearchModel>(
    create: (_) => _SearchModel(),
    child: _SearchView(),
  );
}
