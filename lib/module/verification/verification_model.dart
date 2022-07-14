part of verification;

class _VerificationModel extends TTChangeNotifier<_VerificationView> {
  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onNextPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createSelectLocation();
    }));
  }
}
