library verification;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/widget/auth_textfield.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'verification_view.dart';
part 'verification_model.dart';
part 'verification_state.dart';

ChangeNotifierProvider<_VerificationModel> createVerification() {
  return ChangeNotifierProvider<_VerificationModel>(
    create: (_) => _VerificationModel(),
    child: _VerificationView(),
  );
}
