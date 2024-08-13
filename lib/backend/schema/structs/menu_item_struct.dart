// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuItemStruct extends BaseStruct {
  MenuItemStruct({
    int? itemId,
    String? name,
    String? description,
    double? price,
  })  : _itemId = itemId,
        _name = name,
        _description = description,
        _price = price;

  // "itemId" field.
  int? _itemId;
  int get itemId => _itemId ?? 0;
  set itemId(int? val) => _itemId = val;
  void incrementItemId(int amount) => _itemId = itemId + amount;
  bool hasItemId() => _itemId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static MenuItemStruct fromMap(Map<String, dynamic> data) => MenuItemStruct(
        itemId: castToType<int>(data['itemId']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        price: castToType<double>(data['price']),
      );

  static MenuItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'itemId': _itemId,
        'name': _name,
        'description': _description,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemId': serializeParam(
          _itemId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static MenuItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuItemStruct(
        itemId: deserializeParam(
          data['itemId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MenuItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuItemStruct &&
        itemId == other.itemId &&
        name == other.name &&
        description == other.description &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([itemId, name, description, price]);
}

MenuItemStruct createMenuItemStruct({
  int? itemId,
  String? name,
  String? description,
  double? price,
}) =>
    MenuItemStruct(
      itemId: itemId,
      name: name,
      description: description,
      price: price,
    );
