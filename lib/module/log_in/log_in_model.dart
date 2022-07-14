part of log_in;

class _LogInModel extends TTChangeNotifier<_LogInView> {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool enable = false;
  bool obscureText = false;

  _LogInModel()
      : emailController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    enable = emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    notifyListeners();
  }

  void onVisibilityPressed() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void onLogInPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createHome();
    }));
  }

  void onSignUpPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createSignUp();
    }));
  }
}
