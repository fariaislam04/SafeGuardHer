import 'package:flutter/foundation.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFBC5959),
        appBar: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.sizeOf(context).height * 0.07),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: const AlignmentDirectional(-1, 0.7),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 125,
                          0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SvgPicture.asset(
                          'assets/logos/logo.svg',
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          height: MediaQuery.sizeOf(context).height * 0.07,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: badges.Badge(
                            badgeContent: Text(
                              '1',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 12,
                                letterSpacing: 0,
                              ),
                            ),
                            showBadge: true,
                            child: FlutterFlowIconButton(
                              borderRadius: 20,
                              borderWidth: 1,
                              buttonSize: 40,
                              icon: Icon(
                                Icons.notifications_none_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24,
                              ),
                              onPressed: () {
                                if (kDebugMode) {
                                  print('IconButton pressed ...');
                                }
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: FlutterFlowIconButton(
                            borderRadius: 20,
                            borderWidth: 1,
                            buttonSize: 40,
                            icon: Icon(
                              Icons.menu,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                            onPressed: () {
                              if (kDebugMode) {
                                print('IconButton pressed ...');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Container(),
            ),
            elevation: 2,
          ),
        ),
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(2.49, 0.68),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(43, 0, 0, 10),
                              child: Text(
                                'Track me',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6C022A),
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(45, 10, 0, 0),
                              child: FlutterFlowIconButton(
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: const Icon(
                                  Icons.location_pin,
                                  color: Color(0xFFD20451),
                                  size: 40,
                                ),
                                onPressed: () {
                                  if (kDebugMode) {
                                    print('location pressed ...');
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0,
                              15,
                              9),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0, -0.37),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 50, 0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: const Icon(
                                      Icons.mic_rounded,
                                      color: Color(0xFFA9ABAD),
                                      size: 40,
                                    ),
                                    onPressed: () {
                                      if (kDebugMode) {
                                        print('IconButton pressed ...');
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.69, 0.68),
                                child: Text(
                                  'Record',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFA9ABAD),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                  ),
                                ),
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
            Align(
              alignment: const AlignmentDirectional(0, 0.81),
              child: RawMaterialButton(
                shape: const CircleBorder(),
                onPressed: () {
                  //panic button stuff
                },
                padding: const EdgeInsets.only(top: 20.0),
                fillColor: null,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFD20452), Color(0xFF75012D)],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(13, 13, 13, 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: SvgPicture.asset(
                        'assets/icons/panic_button.svg',
                        width: 54,
                        height: 54,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -1),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 76,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(15, 20, 255, 5),
                          child: Text(
                            'Track me',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF263238),
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Share your live location with close contacts',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF263238),
                              letterSpacing: 0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: const Color(0xFFCE0450),
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 40,
                        fillColor: const Color(0xFFCE0450),
                        icon: const Icon(
                          Icons.person_add,
                          color: Colors.white,
                          size: 24,
                        ),
                        onPressed: () {
                          if (kDebugMode) {
                            print('IconButton pressed ...');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 22),
                child: Text(
                  'Panic Button',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: const Color(0xFF6C022A),
                    fontSize: 17,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}