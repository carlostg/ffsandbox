// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    Key key,
    this.width,
    this.height,
    this.imageBanner,
  }) : super(key: key);

  final double width;
  final double height;
  final List<String> imageBanner;

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imageBanner
        .map(
          (item) => Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: CachedNetworkImage(imageUrl: item, fit: BoxFit.cover),
            ),
          ),
        )
        .toList();

    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}
