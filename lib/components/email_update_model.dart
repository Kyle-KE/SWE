import '/flutter_flow/flutter_flow_util.dart';
import 'email_update_widget.dart' show EmailUpdateWidget;
import 'package:flutter/material.dart';

class EmailUpdateModel extends FlutterFlowModel<EmailUpdateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
