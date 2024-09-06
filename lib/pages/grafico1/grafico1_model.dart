import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/listade_estufas/listade_estufas_widget.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'grafico1_widget.dart' show Grafico1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Grafico1Model extends FlutterFlowModel<Grafico1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Buscar medicoes)] action in Text widget.
  ApiCallResponse? apiResult805;
  // Stores action output result for [Backend Call - API (Buscar medicoes)] action in Text widget.
  ApiCallResponse? apiResult5i3;
  // Stores action output result for [Backend Call - API (Buscar medicoes)] action in Text widget.
  ApiCallResponse? apiResult4gy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
