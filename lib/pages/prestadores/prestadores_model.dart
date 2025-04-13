import '/backend/supabase/supabase.dart';
import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/componentes/rating_bar/rating_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'prestadores_widget.dart' show PrestadoresWidget;
import 'package:flutter/material.dart';

class PrestadoresModel extends FlutterFlowModel<PrestadoresWidget> {
  ///  Local state fields for this page.

  String? filtro;

  ///  State fields for stateful widgets in this page.

  Completer<List<ServiceAgioPrestadorRow>>? requestCompleter;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for RatingBar dynamic component.
  late FlutterFlowDynamicModels<RatingBarModel> ratingBarModels;
  // Model for FloatingBottomNavigation component.
  late FloatingBottomNavigationModel floatingBottomNavigationModel;

  @override
  void initState(BuildContext context) {
    ratingBarModels = FlutterFlowDynamicModels(() => RatingBarModel());
    floatingBottomNavigationModel =
        createModel(context, () => FloatingBottomNavigationModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ratingBarModels.dispose();
    floatingBottomNavigationModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
