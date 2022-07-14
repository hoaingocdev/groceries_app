part of select_location;

class _SelectLocationModel extends TTChangeNotifier<_SelectLocationView> {
  final zone = <ZoneInfo>[];
  final area = <AreaInfo>[];
  ZoneInfo? onZoneSelected;
  AreaInfo? onAreaSelected;

  String get zoneDisplay => onZoneSelected?.zoneName ?? '';
  String get areaDisplay => onAreaSelected?.areaName ?? '';

  _SelectLocationModel() {
    _initData();
  }

  void _initData() {
    final lsZone = List.generate(10, (index) {
      return ZoneInfo.from({
        'zoneName': 'zoneName$index',
      });
    });
    final lsArea = List.generate(10, (index) {
      return AreaInfo.from({
        'areaName': 'areaName$index',
      });
    });
    zone.addAll(lsZone);
    area.addAll(lsArea);
  }

  void onBackPressed() {
    Navigator.of(context).pop();
  }

  void onZoneSelectedPressed(ZoneInfo? value) {
    if (value == null) {
      return;
    }
    if (value == onZoneSelected) {
      return;
    }
    onZoneSelected = value;
    notifyListeners();
  }

  onAreaSelectedPressed(AreaInfo? value) {
    if (value == null) {
      return;
    }
    if (value == onAreaSelected) {
      return;
    }
    onAreaSelected = value;
    notifyListeners();
  }

  void onSubmitPressed() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return createLogIn();
    }));
  }
}
