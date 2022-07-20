part of filters;

class _FiltersModel extends TTChangeNotifier<_FiltersView> {
  bool isCheckEggs = false;
  bool isCheckNoodles = false;
  bool isCheckChip = false;
  bool isCheckFastFood = false;
  bool isCheckIndividualCallection = false;
  bool isCheckCocola = false;
  bool isCheckIfad = false;
  bool isCheckKaziFarmas = false;

  void onClosePressed() {
    Navigator.of(context).pop();
  }

  void onEggChanged(bool? value) {
    isCheckEggs = !isCheckEggs;

    notifyListeners();
  }

  void onNoodlesChanged(bool? value) {
    isCheckNoodles = !isCheckNoodles;

    notifyListeners();
  }

  void onChipChanged(bool? value) {
    isCheckChip = !isCheckChip;

    notifyListeners();
  }

  void onFastFoodPressed(bool? value) {
    isCheckFastFood = !isCheckFastFood;

    notifyListeners();
  }

  void onIndividualCallectionChanged(bool? value) {
    isCheckIndividualCallection = !isCheckIndividualCallection;

    notifyListeners();
  }

  void onCocolaChanged(bool? value) {
    isCheckCocola = !isCheckCocola;

    notifyListeners();
  }

  void onIfadChanged(bool? value) {
    isCheckIfad = !isCheckIfad;

    notifyListeners();
  }

  void onKaziFarmasChanged(bool? value) {
    isCheckKaziFarmas = !isCheckKaziFarmas;

    notifyListeners();
  }

  void onApplyFilter() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createAccount();
    }));
  }
}
