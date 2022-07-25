library beverages;

import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/service/service.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'beverages_view.dart';
part 'beverages_model.dart';
part 'beverages_state.dart';

ChangeNotifierProvider<_BeveragesModel> createBeverages() {
  return ChangeNotifierProvider<_BeveragesModel>(
    create: (_) => _BeveragesModel(),
    child: _BeveragesView(),
  );
}
