import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/comp_cancelar/comp_cancelar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'prestadores_detalhes_model.dart';
export 'prestadores_detalhes_model.dart';

class PrestadoresDetalhesWidget extends StatefulWidget {
  const PrestadoresDetalhesWidget({
    super.key,
    required this.id,
    required this.nome,
    required this.categoria,
    required this.nota,
    required this.status,
    required this.foto,
    required this.descricao,
    bool? agendado,
  }) : this.agendado = agendado ?? false;

  final int? id;
  final String? nome;
  final String? categoria;
  final double? nota;
  final String? status;
  final String? foto;
  final String? descricao;
  final bool agendado;

  static String routeName = 'PrestadoresDetalhes';
  static String routePath = '/prestadoresDetalhes';

  @override
  State<PrestadoresDetalhesWidget> createState() =>
      _PrestadoresDetalhesWidgetState();
}

class _PrestadoresDetalhesWidgetState extends State<PrestadoresDetalhesWidget> {
  late PrestadoresDetalhesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrestadoresDetalhesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent4,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 430.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: SafeArea(
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 70.0,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 200.0,
                                        height: 200.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          '${widget.foto}',
                                          fit: BoxFit.cover,
                                          alignment: Alignment(0.0, -1.0),
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.png',
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, -1.0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.status ==
                                                'DISPONIVEL') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondary;
                                            } else if (widget.status ==
                                                'INDISPONIVEL') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .alternate;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .alternate;
                                            }
                                          }(),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              () {
                                                if (widget.status ==
                                                    'DISPONIVEL') {
                                                  return 'Disponível';
                                                } else if (widget.status ==
                                                    'INDISPONIVEL') {
                                                  return 'Indisponível';
                                                } else {
                                                  return '';
                                                }
                                              }(),
                                              '[status]',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: widget.status ==
                                                          'DISPONIVEL'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          widget.nome,
                                          '[nomel]',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          widget.categoria,
                                          '[profissao]',
                                        ),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      RatingBar.builder(
                                        onRatingUpdate: (newValue) =>
                                            safeSetState(() => _model
                                                .ratingBarValue = newValue),
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                        ),
                                        direction: Axis.horizontal,
                                        initialRating: _model.ratingBarValue ??=
                                            widget.nota!,
                                        unratedColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        itemCount: 5,
                                        itemSize: 32.0,
                                        glowColor: FlutterFlowTheme.of(context)
                                            .warning,
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          widget.descricao,
                                          '[descricao]',
                                        ),
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 24.0)),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    if (widget.agendado) {
                                      return Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: CompCancelarWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => safeSetState(
                                                () => _model.cancelar = value));

                                            if (_model.cancelar!) {
                                              await ServiceAgioBookingsTable()
                                                  .delete(
                                                matchingRows: (rows) => rows
                                                    .eqOrNull(
                                                      'cliente_id',
                                                      currentUserUid,
                                                    )
                                                    .eqOrNull(
                                                      'prestador_id',
                                                      widget.id,
                                                    ),
                                              );
                                              context.safePop();
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .clearSnackBars();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Erro',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 3000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                          text: 'CANCELAR',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 64.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 24.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      );
                                    } else if (widget.status ==
                                        'INDISPONIVEL') {
                                      return FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'INDISPONÍVEL',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 64.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      );
                                    } else {
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            ContratarProfissionalWidget
                                                .routeName,
                                            queryParameters: {
                                              'nome': serializeParam(
                                                widget.nome,
                                                ParamType.String,
                                              ),
                                              'categoria': serializeParam(
                                                widget.categoria,
                                                ParamType.String,
                                              ),
                                              'id': serializeParam(
                                                widget.id,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: 'CONTRATAR',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 64.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
