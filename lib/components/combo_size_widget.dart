import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComboSizeWidget extends StatefulWidget {
  const ComboSizeWidget({
    Key key,
    this.itemImage,
    this.itemName,
    this.frameIsVisible,
    this.itemPrice,
  }) : super(key: key);

  final String itemImage;
  final String itemName;
  final bool frameIsVisible;
  final double itemPrice;

  @override
  _ComboSizeWidgetState createState() => _ComboSizeWidgetState();
}

class _ComboSizeWidgetState extends State<ComboSizeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 150,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        alignment: AlignmentDirectional(0, 0),
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Hero(
                      tag: valueOrDefault<String>(
                        widget.itemImage,
                        'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                      ),
                      transitionOnUserGestures: true,
                      child: CachedNetworkImage(
                        imageUrl: valueOrDefault<String>(
                          widget.itemImage,
                          'https://firebasestorage.googleapis.com/v0/b/flutterflow-sandbox-app.appspot.com/o/assets%2Fimages%2Fplaceholder-image.png?alt=media&token=889fc87a-1c59-4c50-b509-14e7de33f43a',
                        ),
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 15),
                child: Text(
                  widget.itemName,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF3254A4),
                        fontWeight: FontWeight.normal,
                        lineHeight: 1.25,
                      ),
                ),
              ),
            ],
          ),
          if (!(widget.frameIsVisible) ?? true)
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0x40303030),
                ),
              ),
            ),
          if (widget.frameIsVisible ?? true)
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xFF3254A4),
                  width: 2,
                ),
              ),
            ),
          if (widget.frameIsVisible ?? true)
            Align(
              alignment: AlignmentDirectional(1.19, -1.19),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0xFF3254A4),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_rounded,
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                  size: 18,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
