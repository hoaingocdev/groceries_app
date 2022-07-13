part of onbording;

class _OnbordingViewState extends TTState<_OnbordingModel, _OnbordingView> {
  @override
  Widget buildWithModel(BuildContext context, _OnbordingModel model) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://hinhnen123.com/wp-content/uploads/2021/06/hinh-nen-dien-thoai-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 450,
            left: 30,
            right: 30,
            child: Column(
              children: [
                Image.asset(
                  Id.ic_carrot,
                ),
                const SizedBox(height: 35),
                Text(
                  'Welcome to our store',
                  style: St.body48600.copyWith(color: Cl.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: St.body16500.copyWith(
                    color: Cl.clFCFCFC.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 41),
                TTButton(
                  text: 'Get Started',
                  onPressed: model.onGetStartedPressed,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
