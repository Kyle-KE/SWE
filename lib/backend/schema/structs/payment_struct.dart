// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentStruct extends BaseStruct {
  PaymentStruct({
    int? paymentId,
    double? amount,
    String? method,
    String? status,
  })  : _paymentId = paymentId,
        _amount = amount,
        _method = method,
        _status = status;

  // "paymentId" field.
  int? _paymentId;
  int get paymentId => _paymentId ?? 0;
  set paymentId(int? val) => _paymentId = val;
  void incrementPaymentId(int amount) => _paymentId = paymentId + amount;
  bool hasPaymentId() => _paymentId != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "method" field.
  String? _method;
  String get method => _method ?? '';
  set method(String? val) => _method = val;
  bool hasMethod() => _method != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static PaymentStruct fromMap(Map<String, dynamic> data) => PaymentStruct(
        paymentId: castToType<int>(data['paymentId']),
        amount: castToType<double>(data['amount']),
        method: data['method'] as String?,
        status: data['status'] as String?,
      );

  static PaymentStruct? maybeFromMap(dynamic data) =>
      data is Map ? PaymentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'paymentId': _paymentId,
        'amount': _amount,
        'method': _method,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'paymentId': serializeParam(
          _paymentId,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'method': serializeParam(
          _method,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentStruct(
        paymentId: deserializeParam(
          data['paymentId'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        method: deserializeParam(
          data['method'],
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
  String toString() => 'PaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentStruct &&
        paymentId == other.paymentId &&
        amount == other.amount &&
        method == other.method &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([paymentId, amount, method, status]);
}

PaymentStruct createPaymentStruct({
  int? paymentId,
  double? amount,
  String? method,
  String? status,
}) =>
    PaymentStruct(
      paymentId: paymentId,
      amount: amount,
      method: method,
      status: status,
    );
