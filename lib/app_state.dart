import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _showEncy = false;
  bool get showEncy => _showEncy;
  set showEncy(bool value) {
    _showEncy = value;
  }

  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
  }

  int _ristretto = 0;
  int get ristretto => _ristretto;
  set ristretto(int value) {
    _ristretto = value;
  }

  bool _isTakeAway = false;
  bool get isTakeAway => _isTakeAway;
  set isTakeAway(bool value) {
    _isTakeAway = value;
  }

  int _volume = 250;
  int get volume => _volume;
  set volume(int value) {
    _volume = value;
  }

  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? value) {
    _time = value;
  }

  bool _isScheduled = false;
  bool get isScheduled => _isScheduled;
  set isScheduled(bool value) {
    _isScheduled = value;
  }

  double _cost = 0.0;
  double get cost => _cost;
  set cost(double value) {
    _cost = value;
  }

  String _balista = '';
  String get balista => _balista;
  set balista(String value) {
    _balista = value;
  }

  String _coffeeCountry = '';
  String get coffeeCountry => _coffeeCountry;
  set coffeeCountry(String value) {
    _coffeeCountry = value;
  }

  String _coffeeSort = '';
  String get coffeeSort => _coffeeSort;
  set coffeeSort(String value) {
    _coffeeSort = value;
  }

  String _Milk = '';
  String get Milk => _Milk;
  set Milk(String value) {
    _Milk = value;
  }

  String _Roasting = '';
  String get Roasting => _Roasting;
  set Roasting(String value) {
    _Roasting = value;
  }

  String _ice = '';
  String get ice => _ice;
  set ice(String value) {
    _ice = value;
  }

  List<String> _additives = [];
  List<String> get additives => _additives;
  set additives(List<String> value) {
    _additives = value;
  }

  void addToAdditives(String value) {
    _additives.add(value);
  }

  void removeFromAdditives(String value) {
    _additives.remove(value);
  }

  void removeAtIndexFromAdditives(int index) {
    _additives.removeAt(index);
  }

  void updateAdditivesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _additives[index] = updateFn(_additives[index]);
  }

  void insertAtIndexInAdditives(int index, String value) {
    _additives.insert(index, value);
  }

  String _grinding = '';
  String get grinding => _grinding;
  set grinding(String value) {
    _grinding = value;
  }

  String _syrup = '';
  String get syrup => _syrup;
  set syrup(String value) {
    _syrup = value;
  }

  bool _showOrderCompleted = false;
  bool get showOrderCompleted => _showOrderCompleted;
  set showOrderCompleted(bool value) {
    _showOrderCompleted = value;
  }

  int _serviceRating = 0;
  int get serviceRating => _serviceRating;
  set serviceRating(int value) {
    _serviceRating = value;
  }

  double _coffeType = 90.0;
  double get coffeType => _coffeType;
  set coffeType(double value) {
    _coffeType = value;
  }
}
