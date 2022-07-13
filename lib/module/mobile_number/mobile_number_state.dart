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
              Padding(
                padding: EdgeInsets.only(
                  top: 8 + device.padding.top,
                ),
                child: IconButton(
                  onPressed: model.onBackPressed,
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              const SizedBox(height: 66),
              Text(
                'Enter your mobile number',
                style: St.body26600.copyWith(color: Cl.cl181725),
              ),
              const SizedBox(height: 27),
              Text(
                'Mobile Number',
                style: St.body16600.copyWith(color: Cl.cl7C7C7C),
              ),
              AuthTextField(
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
                child: InkWell(
                  onTap: model.onNextPressed,
                  child: Container(
                    height: 67,
                    width: 67,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Cl.cl53B175,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Cl.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
