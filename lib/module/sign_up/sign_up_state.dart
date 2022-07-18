part of sign_up;

class _SignUpViewState extends TTState<_SignUpModel, _SignUpView> {
  @override
  Widget buildWithModel(BuildContext context, _SignUpModel model) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              Id.ic_background2,
            ),
            Positioned(
              top: 90 + device.padding.top,
              left: 25,
              right: 25,
              child: SingleChildScrollView(
                child: Form(
                  key: model.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(Id.img_background_carrot),
                      ),
                      const SizedBox(height: 100),
                      Text(
                        'Sign Up',
                        style: St.body26600.copyWith(color: Cl.cl030303),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Enter your credentials to continue',
                        style: St.body16500.copyWith(color: Cl.cl7C7C7C),
                      ),
                      const SizedBox(height: 40),
                      AuthTextField(
                        onChanged: (v) => model.validate(),
                        controller: model.nameController,
                        labelText: 'Username',
                        isRequired: true,
                        textType: TextType.normal,
                      ),
                      const SizedBox(height: 30),
                      AuthTextField(
                        controller: model.emailController,
                        onChanged: (v) => model.validate(),
                        labelText: 'Email',
                        isRequired: true,
                        textType: TextType.email,
                        suffixIcon: model.emailEnable ? Image.asset(Id.ic_check) : null,
                      ),
                      const SizedBox(height: 30),
                      AuthTextField(
                        onChanged: (v) => model.validate(),
                        controller: model.passwordController,
                        labelText: 'Password',
                        obscureText: model.obscureText,
                        isRequired: true,
                        textType: TextType.password,
                        suffixIcon: IconButton(
                          icon: Icon(
                            model.obscureText ? Icons.visibility : Icons.visibility_off,
                            color: Cl.cl7C7C7C,
                          ),
                          onPressed: model.onObscureTextPressed,
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'By continuing you agree to our',
                          style: St.body14500.copyWith(color: Cl.cl7C7C7C),
                          children: [
                            TextSpan(
                              text: ' Terms of Service',
                              style: St.body14500.copyWith(color: Cl.cl53B175),
                            ),
                            const TextSpan(text: ' and'),
                            TextSpan(
                              text: ' Privacy Policy.',
                              style: St.body14500.copyWith(color: Cl.cl53B175),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      TTButton(
                        text: 'Sign Up',
                        onPressed: model.signUpEnable ? model.onSignUpPressed : null,
                        backgroundColor: model.signUpEnable ? Cl.cl53B175 : Cl.cl7C7C7C,
                      ),
                      const SizedBox(height: 25),
                      InkWell(
                        onTap: model.onLogInPressed,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account?',
                              style: St.body14600.copyWith(
                                color: Cl.cl030303,
                              ),
                              children: [
                                TextSpan(
                                  text: ' LogIn',
                                  style: St.body14500.copyWith(color: Cl.cl53B175),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 70),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
