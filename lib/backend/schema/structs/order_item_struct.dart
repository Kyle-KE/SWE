// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemStruct extends BaseStruct {
  OrderItemStruct({
    int? orderItemId,
    List<String>? menuItem,
    int? quantity,
    double? subtotal,
  })  : _orderItemId = orderItemId,
        _menuItem = menuItem,
        _quantity = quantity,
        _subtotal = subtotal;

  // "orderItemId" field.
  int? _orderItemId;
  int get orderItemId => _orderItemId ?? 0;
  set orderItemId(int? val) => _orderItemId = val;
  void incrementOrderItemId(int amount) => _orderItemId = orderItemId + amount;
  bool hasOrderItemId() => _orderItemId != null;

  // "menuItem" field.
  List<String>? _menuItem;
  List<String> get menuItem => _menuItem ?? const [];
  set menuItem(List<String>? val) => _menuItem = val;
  void updateMenuItem(Function(List<String>) updateFn) =>
      updateFn(_menuItem ??= []);
  bool hasMenuItem() => _menuItem != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;
  void incrementSubtotal(double amount) => _subtotal = subtotal + amount;
  bool hasSubtotal() => _subtotal != null;

  static OrderItemStruct fromMap(Map<String, dynamic> data) => OrderItemStruct(
        orderItemId: castToType<int>(data['orderItemId']),
        menuItem: getDataList(data['menuItem']),
        quantity: castToType<int>(data['quantity']),
        subtotal: castToType<double>(data['subtotal']),
      );

  static OrderItemStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'orderItemId': _orderItemId,
        'menuItem': _menuItem,
        'quantity': _quantity,
        'subtotal': _subtotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orderItemId': serializeParam(
          _orderItemId,
          ParamType.int,
        ),
        'menuItem': serializeParam(
          _menuItem,
          ParamType.String,
          true,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrderItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderItemStruct(
        orderItemId: deserializeParam(
          data['orderItemId'],
          ParamType.int,
          false,
        ),
        menuItem: deserializeParam<String>(
          data['menuItem'],
          ParamType.String,
          true,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrderItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderItemStruct &&
        orderItemId == other.orderItemId &&
        listEquality.equals(menuItem, other.menuItem) &&
        quantity == other.quantity &&
        subtotal == other.subtotal;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([orderItemId, menuItem, quantity, subtotal]);
}

OrderItemStruct createOrderItemStruct({
  int? orderItemId,
  int? quantity,
  double? subtotal,
}) =>
    OrderItemStruct(
      orderItemId: orderItemId,
      quantity: quantity,
      subtotal: subtotal,
    );
