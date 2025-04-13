import '/componentes/floating_bottom_navigation/floating_bottom_navigation_widget.dart';
import '/componentes/rating_bar/rating_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'agendados_widget.dart' show AgendadosWidget;
import 'package:flutter/material.dart';

class AgendadosModel extends FlutterFlowModel<AgendadosWidget> {
  ///  State fields for stateful widgets in this page.

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
    ratingBarModels.dispose();
    floatingBottomNavigationModel.dispose();
  }
}
