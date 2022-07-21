part of account;

class _AccountModel extends TTChangeNotifier<_AccountView> {
  void onLogOutPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createLogIn();
    }));
  }
}
