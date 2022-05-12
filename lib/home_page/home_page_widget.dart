import '../backend/backend.dart';
import '../components/order_item_page_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<BannerImageRecord>>(
      stream: queryBannerImageRecord(
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
        List<BannerImageRecord> homePageBannerImageRecordList = snapshot.data;
        final homePageBannerImageRecord =
            homePageBannerImageRecordList.isNotEmpty
                ? homePageBannerImageRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: custom_widgets.CarouselWidget(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.2,
                        imageBanner:
                            homePageBannerImageRecord.imageUrl.toList(),
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
                        List<MenuCategoryRecord>
                            containerMenuCategoryRecordList = snapshot.data;
                        return Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
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
                                    onChanged: (val) => setState(
                                        () => choiceChipsValue = val.first),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      iconColor: Colors.white,
                                      iconSize: 18,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              8, 4, 8, 8),
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
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              8, 4, 8, 8),
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
                    Expanded(
                      child: StreamBuilder<List<MenuCategoryRecord>>(
                        stream: queryMenuCategoryRecord(
                          queryBuilder: (menuCategoryRecord) =>
                              menuCategoryRecord.where('name',
                                  isEqualTo: choiceChipsValue),
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
                          List<MenuCategoryRecord>
                              containerMenuCategoryRecordList = snapshot.data;
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
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: StreamBuilder<List<MenuItemRecord>>(
                                stream: queryMenuItemRecord(
                                  queryBuilder: (menuItemRecord) =>
                                      menuItemRecord
                                          .where('category',
                                              isEqualTo:
                                                  containerMenuCategoryRecord
                                                      .reference)
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
                                  List<MenuItemRecord>
                                      listViewMenuItemRecordList =
                                      snapshot.data;
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemRecord =
                                          listViewMenuItemRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 16),
                                        child: InkWell(
                                          onTap: () async {
                                            setState(() =>
                                                FFAppState().OrderItemType =
                                                    'Combo Regular');
                                            setState(() =>
                                                FFAppState().OrderItemPrice =
                                                    listViewMenuItemRecord
                                                        .priceSingle);
                                            setState(() => FFAppState()
                                                    .OrderItemImage =
                                                listViewMenuItemRecord.image);
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.95,
                                                    child: OrderItemPageWidget(
                                                      menuItem:
                                                          listViewMenuItemRecord
                                                              .reference,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 125,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x00FFFFFF),
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor
                                                ],
                                                stops: [0.25, 1],
                                                begin:
                                                    AlignmentDirectional(-1, 0),
                                                end: AlignmentDirectional(1, 0),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                width: 1,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 8, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 10,
                                                                    10, 10),
                                                        child: Hero(
                                                          tag: valueOrDefault<
                                                              String>(
                                                            listViewMenuItemRecord
                                                                .image,
                                                            'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a' +
                                                                '$listViewIndex',
                                                          ),
                                                          transitionOnUserGestures:
                                                              true,
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                valueOrDefault<
                                                                    String>(
                                                              listViewMenuItemRecord
                                                                  .image,
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
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              listViewMenuItemRecord
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Color(
                                                                        0xFF090F13),
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .keyboard_arrow_right_rounded,
                                                        color:
                                                            Color(0xFF57636C),
                                                        size: 32,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
