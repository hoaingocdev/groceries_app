part of mobile_number;

class _MobileNumberViewState extends TTState<_MobileNumberModel, _MobileNumberView> {
  @override
  Widget buildWithModel(BuildContext context, _MobileNumberModel model) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              Id.ic_background2,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 25, right: 25, top: 92 + device.padding.top),
                child: Form(
                  key: model.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your mobile number',
                        style: St.body26600.copyWith(color: Cl.cl030303),
                      ),
                      const SizedBox(height: 27),
                      Text(
                        'Mobile Number',
                        style: St.body16600.copyWith(color: Cl.cl7C7C7C),
                      ),
                      AuthTextField(
                        controller: model.phoneController,
                        onChanged: (v) => model.validate(),
                        contentPadding: const EdgeInsets.only(top: 14),
                        keyboardType: TextInputType.phone,
                        textType: TextType.phone,
                        isRequired: true,
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
                          onPressed: model.enable ? model.onNextPressed : null,
                        ),
                      ),
                      const SizedBox(height: 30),
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
