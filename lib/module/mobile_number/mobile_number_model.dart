part of mobile_number;

class _MobileNumberModel extends TTChangeNotifier<_MobileNumberView> {
  final TextEditingController phoneController;
  final formKey = GlobalKey<FormState>();

  bool enable = false;

  _MobileNumberModel() : phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void validate() {
    enable = phoneController.text.isNotEmpty;
    notifyListeners();
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onNextPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createVerification();
    }));
  }
}
