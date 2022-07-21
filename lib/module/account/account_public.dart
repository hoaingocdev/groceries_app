library account;

import 'package:flutter/material.dart';
import 'package:groceries_app/module/log_in/log_in_public.dart';
import 'package:groceries_app/res/res.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'account_view.dart';
part 'account_model.dart';
part 'account_state.dart';

ChangeNotifierProvider<_AccountModel> createAccount() {
  return ChangeNotifierProvider<_AccountModel>(
    create: (_) => _AccountModel(),
    child: _AccountView(),
  );
}
