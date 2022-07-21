library favourite;

import 'package:flutter/material.dart';
import 'package:groceries_app/model/model.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'favourite_view.dart';
part 'favourite_model.dart';
part 'favourite_state.dart';

ChangeNotifierProvider<_FavouriteModel> createFavourite() {
  return ChangeNotifierProvider<_FavouriteModel>(
    create: (_) => _FavouriteModel(),
    child: _FavouriteView(),
  );
}
