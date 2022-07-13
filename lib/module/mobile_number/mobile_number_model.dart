part of mobile_number;

class _MobileNumberModel extends TTChangeNotifier<_MobileNumberView> {
  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onNextPressed() {}
}
