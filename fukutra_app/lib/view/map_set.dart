import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSet extends StatefulWidget {
  const MapSet({Key? key}) : super(key: key);

  @override
  _MapSetState createState() => _MapSetState();
}

class _MapSetState extends State<MapSet> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(33.5897, 130.4207);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map!'),
          backgroundColor: Colors.yellow[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 16.0,
          ),
        ),
      ),
    );
  }
}
