import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../res/res.dart';
import '../utils/validator.p.dart';

enum TextType { password, email, normal, phone }

class AuthTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextType textType;
  final bool enabled;
  final TextInputType? keyboardType;

  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? iconColor;
  final bool obscureText;
  final bool isRequired;
  final int? maxLength;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  const AuthTextField({
    Key? key,
    this.labelText,
    this.suffixIcon,
    this.iconColor,
    this.textType = TextType.normal,
    this.obscureText = false,
    this.isRequired = false,
    this.inputFormatters,
    this.validator,
    this.controller,
    this.onChanged,
    this.enabled = true,
    this.prefixIcon,
    this.keyboardType,
    this.contentPadding,
    this.maxLength,
  }) : super(key: key);

  String? validate(String? value) {
    switch (textType) {
      case TextType.phone:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập số điện thoại';
        }
        if (value?.length != 10) {
          return 'Số điện thoại không hợp lệ';
        }
        return null;
      case TextType.password:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập mật khẩu';
        }
        return null;
      case TextType.email:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập email';
        }
        if (!Validator.validEmail(value ?? '')) {
          return 'Email không đúng định dạng';
        }
        return null;
      case TextType.normal:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập thông tin';
        }
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      enabled: enabled,
      onChanged: onChanged,
      controller: controller,
      validator: validator ?? validate,
      obscureText: obscureText,
      maxLength: maxLength,
      cursorColor: Cl.clE2E2E2,
      scrollPadding: EdgeInsets.zero,
      decoration: InputDecoration(
        contentPadding: contentPadding,

        prefixIcon: prefixIcon,
        iconColor: iconColor,
        suffixIcon: suffixIcon,
        fillColor: Cl.clE2E2E2,
        labelText: labelText,
        labelStyle: St.body16600.copyWith(color: Cl.cl7C7C7C),
        floatingLabelStyle: St.body16600.copyWith(color: Cl.cl7C7C7C),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: Cl.clE2E2E2, width: 1),
        ),
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   borderSide: BorderSide.none,
        // ),
      ),
    );
  }
}
