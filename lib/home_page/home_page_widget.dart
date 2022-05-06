import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController pageViewController;
  String choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF004498), Color(0xFF002F6A)],
              stops: [0, 1],
              begin: AlignmentDirectional(0, -1),
              end: AlignmentDirectional(0, 1),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/seed/33/600',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/seed/745/600',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/seed/427/600',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 3,
                              spacing: 6,
                              radius: 6,
                              dotWidth: 6,
                              dotHeight: 6,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF3F51B5),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              StreamBuilder<List<MenuCategoryRecord>>(
                stream: queryMenuCategoryRecord(
                  queryBuilder: (menuCategoryRecord) =>
                      menuCategoryRecord.orderBy('position'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: Color(0xFF3254A4),
                        ),
                      ),
                    );
                  }
                  List<MenuCategoryRecord> containerMenuCategoryRecordList =
                      snapshot.data;
                  return Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: FlutterFlowChoiceChips(
                              initiallySelected: choiceChipsValue != null
                                  ? [choiceChipsValue]
                                  : ['Nuevo'],
                              options: (containerMenuCategoryRecordList
                                          .map((e) => e.name)
                                          .toList() ??
                                      [])
                                  .map((label) => ChipData(label))
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => choiceChipsValue = val.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                iconColor: Colors.white,
                                iconSize: 18,
                                elevation: 4,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF323B45),
                                    ),
                                iconColor: Color(0xFF323B45),
                                iconSize: 18,
                                elevation: 4,
                              ),
                              chipSpacing: 16,
                              multiselect: false,
                              initialized: choiceChipsValue != null,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              StreamBuilder<List<MenuCategoryRecord>>(
                stream: queryMenuCategoryRecord(
                  queryBuilder: (menuCategoryRecord) => menuCategoryRecord
                      .where('name', isEqualTo: choiceChipsValue),
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: Color(0xFF3254A4),
                        ),
                      ),
                    );
                  }
                  List<MenuCategoryRecord> containerMenuCategoryRecordList =
                      snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final containerMenuCategoryRecord =
                      containerMenuCategoryRecordList.isNotEmpty
                          ? containerMenuCategoryRecordList.first
                          : null;
                  return Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: StreamBuilder<List<MenuItemRecord>>(
                        stream: queryMenuItemRecord(
                          queryBuilder: (menuItemRecord) => menuItemRecord
                              .where('category',
                                  isEqualTo:
                                      containerMenuCategoryRecord.reference)
                              .orderBy('position'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color: Color(0xFF3254A4),
                                ),
                              ),
                            );
                          }
                          List<MenuItemRecord> listViewMenuItemRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewMenuItemRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewMenuItemRecord =
                                  listViewMenuItemRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 111,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 10, 10),
                                            child: Hero(
                                              tag: valueOrDefault<String>(
                                                listViewMenuItemRecord.image,
                                                'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a' +
                                                    '$listViewIndex',
                                              ),
                                              transitionOnUserGestures: true,
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    valueOrDefault<String>(
                                                  listViewMenuItemRecord.image,
                                                  'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                                                ),
                                                width: 90,
                                                height: 90,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listViewMenuItemRecord.name,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF090F13),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Icon(
                                            Icons.chevron_right_rounded,
                                            color: Color(0xFF57636C),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 1,
                                        decoration: BoxDecoration(
                                          color: Color(0x40303030),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
