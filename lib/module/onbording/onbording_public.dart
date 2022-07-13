library onbording;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'onbording_view.dart';
part 'onbording_model.dart';
part 'onbording_state.dart';

ChangeNotifierProvider<_OnbordingModel> createOnbording() {
  return ChangeNotifierProvider<_OnbordingModel>(
    create: (_) => _OnbordingModel(),
    child: _OnbordingView(),
  );
}
