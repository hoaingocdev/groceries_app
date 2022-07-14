library select_location;

import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

import '../../res/res.dart';

part 'select_location_view.dart';
part 'select_location_model.dart';
part 'select_location_state.dart';
part 'widget/address.p.dart';

ChangeNotifierProvider<_SelectLocationModel> createSelectLocation() {
  return ChangeNotifierProvider<_SelectLocationModel>(
    create: (_) => _SelectLocationModel(),
    child: _SelectLocationView(),
  );
}
