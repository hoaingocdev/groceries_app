part of sign_in;

class _SignInModel extends TTChangeNotifier<_SignInView> {
  void onWithGGPressed() {}

  void onWithFbPressed() {}

  void onMobileNumberPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createMobileNumber();
    }));
  }
}
