// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminStruct extends BaseStruct {
  AdminStruct({
    int? adminId,
    String? name,
    String? email,
    String? position,
  })  : _adminId = adminId,
        _name = name,
        _email = email,
        _position = position;

  // "adminId" field.
  int? _adminId;
  int get adminId => _adminId ?? 0;
  set adminId(int? val) => _adminId = val;
  void incrementAdminId(int amount) => _adminId = adminId + amount;
  bool hasAdminId() => _adminId != null;

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

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;
  bool hasPosition() => _position != null;

  static AdminStruct fromMap(Map<String, dynamic> data) => AdminStruct(
        adminId: castToType<int>(data['adminId']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        position: data['position'] as String?,
      );

  static AdminStruct? maybeFromMap(dynamic data) =>
      data is Map ? AdminStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'adminId': _adminId,
        'name': _name,
        'email': _email,
        'position': _position,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'adminId': serializeParam(
          _adminId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
      }.withoutNulls;

  static AdminStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdminStruct(
        adminId: deserializeParam(
          data['adminId'],
          ParamType.int,
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
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdminStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdminStruct &&
        adminId == other.adminId &&
        name == other.name &&
        email == other.email &&
        position == other.position;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([adminId, name, email, position]);
}

AdminStruct createAdminStruct({
  int? adminId,
  String? name,
  String? email,
  String? position,
}) =>
    AdminStruct(
      adminId: adminId,
      name: name,
      email: email,
      position: position,
    );
