import 'dart:async';
import 'package:geocoder/geocoder.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  TextEditingController place = new TextEditingController();
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static  CameraPosition _kLake ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Container(
        height: size.height*1,
        width: size.width*1,
        child: Stack(
          children: [

            GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },


            ),
            Container(
              height: size.height*0.4,
              width: size.width*1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    width: size.width*0.5,
                    child: TextField(
                      controller: place,
                    ),
                  ),
                  RaisedButton(
                    child: Text("Search"),
                    onPressed: ()async{
                      var addresses = await Geocoder.local.findAddressesFromQuery(place.text);
                      setState(() {
                        var first = addresses.first;

                        _kLake = CameraPosition(
                            bearing: 192.8334901395799,
                            target: LatLng(first.coordinates.latitude, first.coordinates.longitude),
                            tilt: 59.440717697143555,
                            zoom: 18.151926040649414);
                      }
                      );
                      _goToTheLake();

                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

 _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}