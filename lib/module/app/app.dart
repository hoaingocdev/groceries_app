import 'package:flutter/material.dart';
import 'package:groceries_app/module/module.dart';

class Groceries extends StatelessWidget {
  const Groceries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createOnbording(),
    );
  }
}
