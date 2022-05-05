import '../backend/backend.dart';
import '../components/order_item_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItemPageWidget extends StatefulWidget {
  const MenuItemPageWidget({
    Key key,
    this.category,
  }) : super(key: key);

  final DocumentReference category;

  @override
  _MenuItemPageWidgetState createState() => _MenuItemPageWidgetState();
}

class _MenuItemPageWidgetState extends State<MenuItemPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MenuCategoryRecord>(
      stream: MenuCategoryRecord.getDocument(widget.category),
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
        final menuItemPageMenuCategoryRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF3254A4),
            automaticallyImplyLeading: true,
            title: Text(
              menuItemPageMenuCategoryRecord.name,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: StreamBuilder<List<MenuItemRecord>>(
                      stream: queryMenuItemRecord(
                        queryBuilder: (menuItemRecord) => menuItemRecord
                            .where('category',
                                isEqualTo:
                                    menuItemPageMenuCategoryRecord.reference)
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              child: InkWell(
                                onTap: () async {
                                  setState(() => FFAppState().OrderItemType =
                                      'Combo Regular');
                                  setState(() => FFAppState().OrderItemPrice =
                                      listViewMenuItemRecord.priceComboReg);
                                  setState(() => FFAppState().OrderItemImage =
                                      listViewMenuItemRecord.image);
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.95,
                                          child: OrderItemPageWidget(
                                            menuItem: listViewMenuItemRecord
                                                .reference,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
                                                        fontSize: 20,
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
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
