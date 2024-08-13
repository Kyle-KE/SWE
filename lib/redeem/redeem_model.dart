import '/flutter_flow/flutter_flow_util.dart';
import 'redeem_widget.dart' show RedeemWidget;
import 'package:flutter/material.dart';

class RedeemModel extends FlutterFlowModel<RedeemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
