import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({Key key}) : super(key: key);

  @override
  _GoogleMapWidgetState createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  final Completer<GoogleMapController> _controller = Completer();

  final  CameraPosition _kGooglePlex = const CameraPosition(
    target:  LatLng(30.04600931872123, 31.224311853462144),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(30.04600931872123, 31.224311853462144),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(40)),
      height: height * .25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GoogleMap(

          //  mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          myLocationEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
