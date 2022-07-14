part of sign_up;

class _SignUpModel extends TTChangeNotifier<_SignUpView> {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  bool emailEnable = false;
  bool obscureText = false;
  bool signUpEnable = false;

  _SignUpModel()
      : nameController = TextEditingController(),
        emailController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validate() {
    signUpEnable =
        nameController.text.isNotEmpty && passwordController.text.isNotEmpty && emailController.text.isNotEmpty;
    emailEnable = emailController.text.isNotEmpty && Validator.validEmail(emailController.text);

    notifyListeners();
  }

  void onObscureTextPressed() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void onSignUpPressed() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => createLogIn(),
      ),
    );
  }

  void onLogInPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => createLogIn(),
      ),
    );
  }
}
