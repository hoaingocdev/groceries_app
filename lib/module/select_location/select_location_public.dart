library select_location;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'select_location_view.dart';
part 'select_location_model.dart';
part 'select_location_state.dart';

ChangeNotifierProvider<_SelectLocationModel> createSelectLocation() {
  return ChangeNotifierProvider<_SelectLocationModel>(
    create: (_) => _SelectLocationModel(),
    child: _SelectLocationView(),
  );
}
