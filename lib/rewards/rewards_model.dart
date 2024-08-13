import '/flutter_flow/flutter_flow_util.dart';
import 'rewards_widget.dart' show RewardsWidget;
import 'package:flutter/material.dart';

class RewardsModel extends FlutterFlowModel<RewardsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
