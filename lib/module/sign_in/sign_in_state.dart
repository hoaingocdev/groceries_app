part of sign_in;

class _SignInViewState extends TTState<_SignInModel, _SignInView> {
  @override
  Widget buildWithModel(BuildContext context, _SignInModel model) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Id.img_background,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Get your groceries with nectar',
              style: St.body26600.copyWith(
                color: Cl.cl030303,
              ),
            ),
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: model.onMobileNumberPressed,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              height: 40,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(Id.ic_flag),
                      const SizedBox(width: 12),
                      Text(
                        '+880',
                        style: St.body18500.copyWith(color: Cl.cl030303),
                      ),
                    ],
                  ),
                  const SizedBox(height: 11),
                  Container(
                    height: 1,
                    color: Cl.clE2E2E2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'Or connect with social media',
            style: St.body14600.copyWith(color: Cl.cl828282),
          ),
          const SizedBox(height: 38),
          buildButton(
            onPressed: model.onWithGGPressed,
            backgroundColor: Cl.cl5383EC,
            imgAsset: Id.ic_gg,
            text: 'Continue with Google',
          ),
          const SizedBox(height: 20),
          buildButton(
            onPressed: model.onWithFbPressed,
            imgAsset: Id.ic_fb,
            text: 'Continue with Facebook',
            backgroundColor: Cl.cl4A66AC,
          )
        ],
      ),
    );
  }

  Widget buildButton({
    Color? backgroundColor,
    required String imgAsset,
    required String text,
    VoidCallback? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TTButton(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imgAsset),
            const SizedBox(width: 40),
            Text(
              text,
              style: St.body18600.copyWith(color: Cl.white),
            )
          ],
        ),
      ),
    );
  }
}
