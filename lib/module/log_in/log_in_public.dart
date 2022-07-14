library log_in;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/widget/auth_textfield.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'log_in_view.dart';
part 'log_in_model.dart';
part 'log_in_state.dart';

ChangeNotifierProvider<_LogInModel> createLogIn() {
  return ChangeNotifierProvider<_LogInModel>(
    create: (_) => _LogInModel(),
    child: _LogInView(),
  );
}
