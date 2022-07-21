part of verification;

class _VerificationViewState extends TTState<_VerificationModel, _VerificationView> {
  @override
  Widget buildWithModel(BuildContext context, _VerificationModel model) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              Id.img_background2,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 92 + device.padding.top,
                ),
                child: Form(
                  key: model.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your 4-digit code',
                        style: St.body26600.copyWith(color: Cl.cl181725),
                      ),
                      const SizedBox(height: 28),
                      AuthTextField(
                        controller: model.codeController,
                        onChanged: (v) => model.validate(),
                        isRequired: true,
                        textType: TextType.normal,
                        labelText: 'Code',
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                      ),
                      const SizedBox(height: 242),
                      Row(
                        children: [
                          Text(
                            'Resend Code',
                            style: St.body18500.copyWith(color: Cl.cl53B175),
                          ),
                          const Spacer(),
                          TTButtonCircle(
                            onPressed: model.enable ? model.onNextPressed : null,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8 + device.padding.top,
              left: 10,
              child: IconButton(
                onPressed: model.onBackPressed,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Cl.cl030303,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
