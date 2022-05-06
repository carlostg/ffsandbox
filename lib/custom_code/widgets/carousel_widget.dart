// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final List<String> imgList = [
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t1.6435-9/148588133_3800211170030213_2543928149057025781_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=e3f864&_nc_ohc=Mn4nE2IuPWEAX_SpqL4&_nc_ht=scontent.fsig3-1.fna&oh=00_AT8CXCwpxL-7O4efUfmCUQQyU0HQLqOnvVaitFlzP2C4Zw&oe=629949D7',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t39.30808-6/277001330_5057359290982055_6168359051711371368_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=e3f864&_nc_ohc=KXA3jtL2g9cAX8O63TC&_nc_ht=scontent.fsig3-1.fna&oh=00_AT_LiaMdvq7kb_GC8qJStRJMfcJRM1p4SNcdAa9D5u6_Sw&oe=627A0CE7',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t39.30808-6/275075117_4994298730621445_3891726766742420720_n.jpg?_nc_cat=105&ccb=1-6&_nc_sid=e3f864&_nc_ohc=TecO6viuC10AX_DDkgW&_nc_ht=scontent.fsig3-1.fna&oh=00_AT-Acf28Dar6birD4VaCNsL6m9Yg0ev7JJBnlG0s14_ZZw&oe=627A0C66',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t39.30808-6/274040325_4952532964798022_4782614316423870300_n.jpg?_nc_cat=101&ccb=1-6&_nc_sid=e3f864&_nc_ohc=IjLsALLJVE0AX98_sUG&_nc_ht=scontent.fsig3-1.fna&oh=00_AT--H2eKGbMWahUJ6K0LBokQYgVrcU6TAvznd_XoZ3zA4A&oe=627A22B9'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(item, fit: BoxFit.cover),
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
