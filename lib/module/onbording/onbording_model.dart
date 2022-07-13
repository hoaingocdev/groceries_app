part of onbording;

class _OnbordingModel extends TTChangeNotifier<_OnbordingView> {
  void onGetStartedPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => createSignIn(),
      ),
    );
  }
}
