import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'select_additives_model.dart';
export 'select_additives_model.dart';

class SelectAdditivesWidget extends StatefulWidget {
  const SelectAdditivesWidget({
    super.key,
    required this.additives,
  });

  final List<String>? additives;

  @override
  State<SelectAdditivesWidget> createState() => _SelectAdditivesWidgetState();
}

class _SelectAdditivesWidgetState extends State<SelectAdditivesWidget> {
  late SelectAdditivesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAdditivesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Select Additives',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close_sharp,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 35.0, 20.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final additives = widget.additives!.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: additives.length,
                      itemBuilder: (context, additivesIndex) {
                        final additivesItem = additives[additivesIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 11.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState()
                                      .additives
                                      .contains(additivesItem)) {
                                    setState(() {
                                      FFAppState()
                                          .removeFromAdditives(additivesItem);
                                    });
                                  } else {
                                    setState(() {
                                      FFAppState()
                                          .addToAdditives(additivesItem);
                                    });
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      additivesItem,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: valueOrDefault<Color>(
                                              FFAppState()
                                                      .additives
                                                      .contains(additivesItem)
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondary
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.check,
                                      color: valueOrDefault<Color>(
                                        FFAppState()
                                                .additives
                                                .contains(additivesItem)
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        FlutterFlowTheme.of(context).alternate,
                                      ),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
