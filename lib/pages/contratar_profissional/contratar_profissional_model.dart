import '/flutter_flow/flutter_flow_util.dart';
import 'contratar_profissional_widget.dart' show ContratarProfissionalWidget;
import 'package:flutter/material.dart';

class ContratarProfissionalModel
    extends FlutterFlowModel<ContratarProfissionalWidget> {
  ///  Local state fields for this page.

  bool validaInputs = false;

  DateTime? data;

  DateTime? horario;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for inputDescricao widget.
  FocusNode? inputDescricaoFocusNode;
  TextEditingController? inputDescricaoTextController;
  String? Function(BuildContext, String?)?
      inputDescricaoTextControllerValidator;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in ButtonCriar widget.
  bool? agendar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputDescricaoFocusNode?.dispose();
    inputDescricaoTextController?.dispose();
  }
}
