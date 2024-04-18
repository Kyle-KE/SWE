import '/flutter_flow/flutter_flow_util.dart';
import 'phone_update_widget.dart' show PhoneUpdateWidget;
import 'package:flutter/material.dart';

class PhoneUpdateModel extends FlutterFlowModel<PhoneUpdateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
