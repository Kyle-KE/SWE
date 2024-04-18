// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuStruct extends BaseStruct {
  MenuStruct({
    int? menuId,
    String? name,
    List<String>? items,
  })  : _menuId = menuId,
        _name = name,
        _items = items;

  // "menuId" field.
  int? _menuId;
  int get menuId => _menuId ?? 0;
  set menuId(int? val) => _menuId = val;
  void incrementMenuId(int amount) => _menuId = menuId + amount;
  bool hasMenuId() => _menuId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "items" field.
  List<String>? _items;
  List<String> get items => _items ?? const [];
  set items(List<String>? val) => _items = val;
  void updateItems(Function(List<String>) updateFn) => updateFn(_items ??= []);
  bool hasItems() => _items != null;

  static MenuStruct fromMap(Map<String, dynamic> data) => MenuStruct(
        menuId: castToType<int>(data['menuId']),
        name: data['name'] as String?,
        items: getDataList(data['items']),
      );

  static MenuStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'menuId': _menuId,
        'name': _name,
        'items': _items,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuId': serializeParam(
          _menuId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'items': serializeParam(
          _items,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static MenuStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuStruct(
        menuId: deserializeParam(
          data['menuId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        items: deserializeParam<String>(
          data['items'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MenuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MenuStruct &&
        menuId == other.menuId &&
        name == other.name &&
        listEquality.equals(items, other.items);
  }

  @override
  int get hashCode => const ListEquality().hash([menuId, name, items]);
}

MenuStruct createMenuStruct({
  int? menuId,
  String? name,
}) =>
    MenuStruct(
      menuId: menuId,
      name: name,
    );
