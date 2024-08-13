import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'coffie_card_model.dart';
export 'coffie_card_model.dart';

class CoffieCardWidget extends StatefulWidget {
  const CoffieCardWidget({
    super.key,
    this.image,
    String? name,
  }) : name = name ?? 'Cappuccino';

  final FFUploadedFile? image;
  final String name;

  @override
  State<CoffieCardWidget> createState() => _CoffieCardWidgetState();
}

class _CoffieCardWidgetState extends State<CoffieCardWidget> {
  late CoffieCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoffieCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 154.0,
        height: 164.0,
        decoration: BoxDecoration(
          color: const Color(0xFFF7F8FB),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/mug_coffee_PNG16825_1.png',
                width: 114.0,
                height: 85.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
              child: Text(
                'Americano',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
