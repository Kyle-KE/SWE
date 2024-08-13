// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderStruct extends BaseStruct {
  OrderStruct({
    int? orderId,
    String? customer,
    List<String>? items,
    double? totalPrice,
    String? deliverAddress,
    String? status,
  })  : _orderId = orderId,
        _customer = customer,
        _items = items,
        _totalPrice = totalPrice,
        _deliverAddress = deliverAddress,
        _status = status;

  // "orderId" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  set orderId(int? val) => _orderId = val;
  void incrementOrderId(int amount) => _orderId = orderId + amount;
  bool hasOrderId() => _orderId != null;

  // "customer" field.
  String? _customer;
  String get customer => _customer ?? '';
  set customer(String? val) => _customer = val;
  bool hasCustomer() => _customer != null;

  // "items" field.
  List<String>? _items;
  List<String> get items => _items ?? const [];
  set items(List<String>? val) => _items = val;
  void updateItems(Function(List<String>) updateFn) => updateFn(_items ??= []);
  bool hasItems() => _items != null;

  // "totalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;
  void incrementTotalPrice(double amount) => _totalPrice = totalPrice + amount;
  bool hasTotalPrice() => _totalPrice != null;

  // "deliverAddress" field.
  String? _deliverAddress;
  String get deliverAddress => _deliverAddress ?? '';
  set deliverAddress(String? val) => _deliverAddress = val;
  bool hasDeliverAddress() => _deliverAddress != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static OrderStruct fromMap(Map<String, dynamic> data) => OrderStruct(
        orderId: castToType<int>(data['orderId']),
        customer: data['customer'] as String?,
        items: getDataList(data['items']),
        totalPrice: castToType<double>(data['totalPrice']),
        deliverAddress: data['deliverAddress'] as String?,
        status: data['status'] as String?,
      );

  static OrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'orderId': _orderId,
        'customer': _customer,
        'items': _items,
        'totalPrice': _totalPrice,
        'deliverAddress': _deliverAddress,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orderId': serializeParam(
          _orderId,
          ParamType.int,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.String,
        ),
        'items': serializeParam(
          _items,
          ParamType.String,
          true,
        ),
        'totalPrice': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'deliverAddress': serializeParam(
          _deliverAddress,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderStruct(
        orderId: deserializeParam(
          data['orderId'],
          ParamType.int,
          false,
        ),
        customer: deserializeParam(
          data['customer'],
          ParamType.String,
          false,
        ),
        items: deserializeParam<String>(
          data['items'],
          ParamType.String,
          true,
        ),
        totalPrice: deserializeParam(
          data['totalPrice'],
          ParamType.double,
          false,
        ),
        deliverAddress: deserializeParam(
          data['deliverAddress'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderStruct &&
        orderId == other.orderId &&
        customer == other.customer &&
        listEquality.equals(items, other.items) &&
        totalPrice == other.totalPrice &&
        deliverAddress == other.deliverAddress &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([orderId, customer, items, totalPrice, deliverAddress, status]);
}

OrderStruct createOrderStruct({
  int? orderId,
  String? customer,
  double? totalPrice,
  String? deliverAddress,
  String? status,
}) =>
    OrderStruct(
      orderId: orderId,
      customer: customer,
      totalPrice: totalPrice,
      deliverAddress: deliverAddress,
      status: status,
    );
