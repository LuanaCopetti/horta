import '/components/grafico_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard04_circle_graph_widget.dart' show Dashboard04CircleGraphWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Dashboard04CircleGraphModel
    extends FlutterFlowModel<Dashboard04CircleGraphWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for grafico component.
  late GraficoModel graficoModel;

  @override
  void initState(BuildContext context) {
    graficoModel = createModel(context, () => GraficoModel());
  }

  @override
  void dispose() {
    graficoModel.dispose();
  }
}
