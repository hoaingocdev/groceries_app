part of verification;

class _VerificationModel extends TTChangeNotifier<_VerificationView> {
  final TextEditingController codeController;
  final formKey = GlobalKey<FormState>();

  bool enable = false;

  _VerificationModel() : codeController = TextEditingController();

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  void validate() {
    enable = codeController.text.isNotEmpty;
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
      return createSelectLocation();
    }));
  }
}
