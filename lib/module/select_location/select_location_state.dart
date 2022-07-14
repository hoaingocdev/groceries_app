part of select_location;

class _SelectLocationViewState extends TTState<_SelectLocationModel, _SelectLocationView> {
  @override
  Widget buildWithModel(BuildContext context, _SelectLocationModel model) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8 + device.padding.top),
                child: IconButton(
                  onPressed: model.onBackPressed,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Cl.cl030303,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              Center(
                child: Image.asset(Id.ic_illustration),
              ),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  'Select Your Location',
                  style: St.body26600.copyWith(color: Cl.cl181725),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Swithch on your location to stay in tune with what’s happening in your area',
                style: St.body16500.copyWith(
                  color: Cl.cl7C7C7C,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 89),
              Address(
                title: 'Your Zone',
                text: model.zoneDisplay,
                list: model.zone,
                onZoneSelected: model.onZoneSelectedPressed,
              ),
              const SizedBox(height: 30),

              Address(
                title: 'Your Area',
                text: model.areaDisplay,
                list: model.area,
                onAreaSelected: model.onAreaSelectedPressed,
              ),
              const SizedBox(height: 40),

              TTButton(
                text: 'Submit',
                onPressed: model.onSubmitPressed,
              )

              //
            ],
          ),
        ),
      ),
    );
  }
}
