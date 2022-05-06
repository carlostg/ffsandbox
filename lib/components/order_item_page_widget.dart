import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/combo_size_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItemPageWidget extends StatefulWidget {
  const OrderItemPageWidget({
    Key key,
    this.menuItem,
  }) : super(key: key);

  final DocumentReference menuItem;

  @override
  _OrderItemPageWidgetState createState() => _OrderItemPageWidgetState();
}

class _OrderItemPageWidgetState extends State<OrderItemPageWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MenuItemRecord>(
      future: MenuItemRecord.getDocumentOnce(widget.menuItem),
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
        final containerMenuItemRecord = snapshot.data;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.close_rounded,
                      color: Color(0xFF303030),
                      size: 30,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                      setState(() => FFAppState().ComboRegIsVisible = true);
                      setState(() => FFAppState().ComboMedIsVisible = false);
                      setState(() => FFAppState().IndividualIsVisible = false);
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          containerMenuItemRecord.name,
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          formatNumber(
                            FFAppState().OrderItemPrice,
                            formatType: FormatType.custom,
                            currency: '',
                            format: '#,###.00',
                            locale: '',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Text(
                            FFAppState().OrderItemType,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: StreamBuilder<List<FavoriteItemRecord>>(
                        stream: queryFavoriteItemRecord(
                          queryBuilder: (favoriteItemRecord) =>
                              favoriteItemRecord
                                  .where('created_by',
                                      isEqualTo: currentUserReference)
                                  .where('menu_item',
                                      isEqualTo:
                                          containerMenuItemRecord.reference),
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
                          List<FavoriteItemRecord> rowFavoriteItemRecordList =
                              snapshot.data;
                          final rowFavoriteItemRecord =
                              rowFavoriteItemRecordList.isNotEmpty
                                  ? rowFavoriteItemRecordList.first
                                  : null;
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (!(rowFavoriteItemRecord != null) ?? true)
                                InkWell(
                                  onTap: () async {
                                    final favoriteItemCreateData =
                                        createFavoriteItemRecordData(
                                      createdBy: currentUserReference,
                                      menuItem:
                                          containerMenuItemRecord.reference,
                                      createdTime: getCurrentTimestamp,
                                    );
                                    await FavoriteItemRecord.collection
                                        .doc()
                                        .set(favoriteItemCreateData);
                                  },
                                  child: Icon(
                                    Icons.star_outline_rounded,
                                    color: Color(0x7F303030),
                                    size: 24,
                                  ),
                                ),
                              if (rowFavoriteItemRecord != null)
                                InkWell(
                                  onTap: () async {
                                    await rowFavoriteItemRecord.reference
                                        .delete();
                                  },
                                  child: Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFFFBC200),
                                    size: 24,
                                  ),
                                ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'Favorito',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF3254A4),
                                      ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(),
                        child: Hero(
                          tag: valueOrDefault<String>(
                            FFAppState().OrderItemImage,
                            'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                          ),
                          transitionOnUserGestures: true,
                          child: CachedNetworkImage(
                            imageUrl: valueOrDefault<String>(
                              FFAppState().OrderItemImage,
                              'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () async {
                              setState(
                                  () => FFAppState().ComboRegIsVisible = true);
                              setState(
                                  () => FFAppState().ComboMedIsVisible = false);
                              setState(() =>
                                  FFAppState().IndividualIsVisible = false);
                              setState(() =>
                                  FFAppState().OrderItemType = 'Combo Regular');
                              setState(() => FFAppState().OrderItemPrice =
                                  containerMenuItemRecord.priceComboReg);
                              setState(() => FFAppState().OrderItemImage =
                                  containerMenuItemRecord.image);
                            },
                            child: ComboSizeWidget(
                              itemImage: valueOrDefault<String>(
                                containerMenuItemRecord.image,
                                'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                              ),
                              itemName: 'Combo Regular',
                              frameIsVisible: FFAppState().ComboRegIsVisible,
                              itemPrice: containerMenuItemRecord.priceComboReg,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              setState(
                                  () => FFAppState().ComboMedIsVisible = true);
                              setState(
                                  () => FFAppState().ComboRegIsVisible = false);
                              setState(() =>
                                  FFAppState().IndividualIsVisible = false);
                              setState(() =>
                                  FFAppState().OrderItemType = 'Combo Mediano');
                              setState(() => FFAppState().OrderItemPrice =
                                  containerMenuItemRecord.priceComboMed);
                              setState(() => FFAppState().OrderItemImage =
                                  containerMenuItemRecord.image);
                            },
                            child: ComboSizeWidget(
                              itemImage: valueOrDefault<String>(
                                containerMenuItemRecord.image,
                                'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                              ),
                              itemName: 'Combo Mediano',
                              frameIsVisible: FFAppState().ComboMedIsVisible,
                              itemPrice: containerMenuItemRecord.priceComboMed,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              setState(() =>
                                  FFAppState().IndividualIsVisible = true);
                              setState(
                                  () => FFAppState().ComboMedIsVisible = false);
                              setState(
                                  () => FFAppState().ComboRegIsVisible = false);
                              setState(() =>
                                  FFAppState().OrderItemType = 'Individual');
                              setState(() => FFAppState().OrderItemPrice =
                                  containerMenuItemRecord.priceSingle);
                              setState(() => FFAppState().OrderItemImage =
                                  containerMenuItemRecord.image);
                            },
                            child: ComboSizeWidget(
                              itemImage: valueOrDefault<String>(
                                containerMenuItemRecord.image,
                                'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                              ),
                              itemName: 'Individual\n',
                              frameIsVisible: FFAppState().IndividualIsVisible,
                              itemPrice: containerMenuItemRecord.priceSingle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
