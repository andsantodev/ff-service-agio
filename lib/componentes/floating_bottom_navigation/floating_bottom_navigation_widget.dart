import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'floating_bottom_navigation_model.dart';
export 'floating_bottom_navigation_model.dart';

class FloatingBottomNavigationWidget extends StatefulWidget {
  const FloatingBottomNavigationWidget({
    super.key,
    required this.selectedPage,
  });

  final String? selectedPage;

  @override
  State<FloatingBottomNavigationWidget> createState() =>
      _FloatingBottomNavigationWidgetState();
}

class _FloatingBottomNavigationWidgetState
    extends State<FloatingBottomNavigationWidget> {
  late FloatingBottomNavigationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FloatingBottomNavigationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Container(
            width: 280.0,
            height: 60.0,
            constraints: BoxConstraints(
              maxWidth: 430.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Opacity(
                      opacity: widget.selectedPage == 'home' ? 1.0 : 0.3,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed(
                            HomeWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.selectedPage == 'home'
                                ? FlutterFlowTheme.of(context).alternate
                                : Color(0x00000000),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FFIcons.kksmartHome,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                            ].divide(SizedBox(height: 2.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity:
                          widget.selectedPage == 'prestadores' ? 1.0 : 0.3,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed(
                            PrestadoresWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.selectedPage == 'prestadores'
                                ? FlutterFlowTheme.of(context).alternate
                                : Color(0x00000000),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FFIcons.kksearch,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 28.0,
                              ),
                            ].divide(SizedBox(height: 2.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: widget.selectedPage == 'agendados' ? 1.0 : 0.3,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed(
                            AgendadosWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.selectedPage == 'agendados'
                                ? FlutterFlowTheme.of(context).alternate
                                : Color(0x00000000),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FFIcons.kkcalendarPlus,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 28.0,
                              ),
                            ].divide(SizedBox(height: 2.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: widget.selectedPage == 'perfil' ? 1.0 : 0.3,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.goNamed(
                            PerfilWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.selectedPage == 'perfil'
                                ? FlutterFlowTheme.of(context).alternate
                                : Color(0x00000000),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FFIcons.kkuser,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 28.0,
                              ),
                            ].divide(SizedBox(height: 2.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
