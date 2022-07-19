library explore;

import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'explore_view.dart';
part 'explore_model.dart';
part 'explore_state.dart';

ChangeNotifierProvider<_ExploreModel> createExplore() {
  return ChangeNotifierProvider<_ExploreModel>(
    create: (_) => _ExploreModel(),
    child: _ExploreView(),
  );
}
