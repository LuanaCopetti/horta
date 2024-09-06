import '/components/grafico_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard04_circle_graph_model.dart';
export 'dashboard04_circle_graph_model.dart';

class Dashboard04CircleGraphWidget extends StatefulWidget {
  const Dashboard04CircleGraphWidget({super.key});

  @override
  State<Dashboard04CircleGraphWidget> createState() =>
      _Dashboard04CircleGraphWidgetState();
}

class _Dashboard04CircleGraphWidgetState
    extends State<Dashboard04CircleGraphWidget> {
  late Dashboard04CircleGraphModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Dashboard04CircleGraphModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x230E151B),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: wrapWithModel(
          model: _model.graficoModel,
          updateCallback: () => safeSetState(() {}),
          child: GraficoWidget(),
        ),
      ),
    );
  }
}
