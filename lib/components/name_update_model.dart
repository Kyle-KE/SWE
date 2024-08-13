import '/flutter_flow/flutter_flow_util.dart';
import 'name_update_widget.dart' show NameUpdateWidget;
import 'package:flutter/material.dart';

class NameUpdateModel extends FlutterFlowModel<NameUpdateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
