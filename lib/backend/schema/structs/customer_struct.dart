// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    String? customerId,
    String? name,
    String? email,
    String? address,
    LatLng? location,
  })  : _customerId = customerId,
        _name = name,
        _email = email,
        _address = address,
        _location = location;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;
  bool hasCustomerId() => _customerId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;
  bool hasLocation() => _location != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        customerId: data['customerId'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        address: data['address'] as String?,
        location: data['location'] as LatLng?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customerId': _customerId,
        'name': _name,
        'email': _email,
        'address': _address,
        'location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        customerId == other.customerId &&
        name == other.name &&
        email == other.email &&
        address == other.address &&
        location == other.location;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([customerId, name, email, address, location]);
}

CustomerStruct createCustomerStruct({
  String? customerId,
  String? name,
  String? email,
  String? address,
  LatLng? location,
}) =>
    CustomerStruct(
      customerId: customerId,
      name: name,
      email: email,
      address: address,
      location: location,
    );
