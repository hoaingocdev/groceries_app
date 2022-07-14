part of verification;

class _VerificationViewState extends TTState<_VerificationModel, _VerificationView> {
  @override
  Widget buildWithModel(BuildContext context, _VerificationModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TTTitle(
                onPressed: model.onBackPressed,
                title: 'Enter your 4-digit code',
                top: 8 + device.padding.top,
              ),
              const SizedBox(height: 28),
              const AuthTextField(
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
                    onPressed: model.onNextPressed,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
