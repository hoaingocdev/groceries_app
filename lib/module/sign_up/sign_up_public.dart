library sign_up;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/utils/validator.p.dart';
import 'package:groceries_app/widget/auth_textfield.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'sign_up_view.dart';
part 'sign_up_model.dart';
part 'sign_up_state.dart';

ChangeNotifierProvider<_SignUpModel> createSignUp() {
  return ChangeNotifierProvider<_SignUpModel>(
    create: (_) => _SignUpModel(),
    child: _SignUpView(),
  );
}
