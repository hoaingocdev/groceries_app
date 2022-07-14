part of mobile_number;

class _MobileNumberViewState extends TTState<_MobileNumberModel, _MobileNumberView> {
  @override
  Widget buildWithModel(BuildContext context, _MobileNumberModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TTTitle(
                title: 'Enter your mobile number',
                onPressed: model.onBackPressed,
                top: 8 + device.padding.top,
              ),
              const SizedBox(height: 27),
              Text(
                'Mobile Number',
                style: St.body16600.copyWith(color: Cl.cl7C7C7C),
              ),
              AuthTextField(
                contentPadding: const EdgeInsets.only(top: 14),
                keyboardType: TextInputType.phone,
                textType: TextType.phone,
                // isRequired: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CountryCodePicker(
                      padding: EdgeInsets.zero,
                      onChanged: print,
                      initialSelection: 'IT',
                      favorite: const ['+39', 'FR'],
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                    Container(
                      width: 1,
                      height: 20,
                      color: Cl.cl7C7C7C,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 222),
              Align(
                  alignment: Alignment.topRight,
                  child: TTButtonCircle(
                    onPressed: model.onNextPressed,
                  )),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
