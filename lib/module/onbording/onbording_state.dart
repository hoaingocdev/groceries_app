part of onbording;

class _OnbordingViewState extends TTState<_OnbordingModel, _OnbordingView> {
  @override
  Widget buildWithModel(BuildContext context, _OnbordingModel model) {
    return const Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
