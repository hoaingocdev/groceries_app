library mobile_number;

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceries_app/module/module.dart';
import 'package:groceries_app/res/res.dart';
import 'package:groceries_app/widget/auth_textfield.dart';
import 'package:provider/provider.dart';
import 'package:groceries_app/widget/widget.dart';

part 'mobile_number_view.dart';
part 'mobile_number_model.dart';
part 'mobile_number_state.dart';

ChangeNotifierProvider<_MobileNumberModel> createMobileNumber() {
  return ChangeNotifierProvider<_MobileNumberModel>(
    create: (_) => _MobileNumberModel(),
    child: _MobileNumberView(),
  );
}
