part of log_in;

class _LogInViewState extends TTState<_LogInModel, _LogInView> {
  @override
  Widget buildWithModel(BuildContext context, _LogInModel model) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              Id.ic_background2,
            ),
            Positioned(
              top: 77 + device.padding.top,
              left: 25,
              right: 25,
              child: Form(
                key: model.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        Id.img_background_carrot,
                      ),
                    ),
                    const SizedBox(height: 100),
                    Text(
                      'Loging',
                      style: St.body26600.copyWith(color: Cl.cl181725),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Enter your emails and password',
                      style: St.body16500.copyWith(color: Cl.cl7C7C7C),
                    ),
                    const SizedBox(height: 40),
                    AuthTextField(
                      onChanged: (v) => model.validate(),
                      controller: model.emailController,
                      labelText: 'Email',
                      isRequired: true,
                      textType: TextType.email,
                    ),
                    const SizedBox(height: 30),
                    AuthTextField(
                      onChanged: (v) => model.validate(),
                      controller: model.passwordController,
                      isRequired: true,
                      textType: TextType.password,
                      obscureText: model.obscureText,
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: model.onVisibilityPressed,
                        icon: Icon(
                          model.obscureText ? Icons.visibility : Icons.visibility_off,
                          color: Cl.cl7C7C7C,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot Password?',
                        style: St.body14500.copyWith(color: Cl.cl181725),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TTButton(
                      onPressed: model.enable ? model.onLogInPressed : null,
                      backgroundColor: model.enable ? Cl.cl53B175 : Cl.cl7C7C7C,
                      text: 'Log In',
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: model.onSignUpPressed,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Don’t have an account? ',
                            style: St.body14600.copyWith(color: Cl.cl181725),
                            children: [
                              TextSpan(
                                text: 'Singup',
                                style: St.body14600.copyWith(color: Cl.cl53B175),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
