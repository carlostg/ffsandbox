import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  bool ComboRegIsVisible = true;

  bool ComboMedIsVisible = false;

  bool IndividualIsVisible = false;

  String OrderItemType = '';

  double OrderItemPrice = 0.0;

  String OrderItemImage;

  List<String> bannerList = [
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t39.30808-6/277001330_5057359290982055_6168359051711371368_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=e3f864&_nc_ohc=X2dcjChiLxoAX-bqSk7&_nc_ht=scontent.fsig3-1.fna&oh=00_AT8MAVeA0xrW-hBRwRdd99Yfb8c740aRBMPjqD-Y_jvraA&oe=6281F5E7',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t39.30808-6/275075117_4994298730621445_3891726766742420720_n.jpg?_nc_cat=105&ccb=1-6&_nc_sid=e3f864&_nc_ohc=0IawIv7EVPoAX_OhtK-&_nc_ht=scontent.fsig3-1.fna&oh=00_AT_IApUM9CFrhNBRmRL60QyKUHB4yC61OK2qCtKYwaOEsA&oe=6281F566',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t39.30808-6/274040325_4952532964798022_4782614316423870300_n.jpg?_nc_cat=101&ccb=1-6&_nc_sid=e3f864&_nc_ohc=MC1opRhKnF4AX_beJxq&_nc_ht=scontent.fsig3-1.fna&oh=00_AT-ldIQdUt8fLYwOMbB5HARhTDyfDcOBFb2QkQnyOFMUOg&oe=62820BB9',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t1.6435-9/122387889_3491974677520532_6979416919707980743_n.jpg?_nc_cat=106&ccb=1-6&_nc_sid=e3f864&_nc_ohc=kbHCy4a_8FwAX8ma4wl&_nc_ht=scontent.fsig3-1.fna&oh=00_AT9lv18dbjldRrSlGLmB7aumzoVvE1q85sXju5zQ8uzjBw&oe=62A29472',
    'https://scontent.fsig3-1.fna.fbcdn.net/v/t1.6435-9/148588133_3800211170030213_2543928149057025781_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=e3f864&_nc_ohc=2tuKBz8rJmEAX_jOJOo&_nc_ht=scontent.fsig3-1.fna&oh=00_AT8j37j4tYAdUK1MER17W1Ioq7FFNCq8isO2Cfa_7WVSLg&oe=62A132D7'
  ];
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
