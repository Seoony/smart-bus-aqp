import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsScreen extends StatelessWidget {
  const GoogleMapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps Screen'),
      ),
      body: const MapWidget(),
    );
  }
}

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        _mapController = controller;
      },
      initialCameraPosition: const CameraPosition(
        target: LatLng(37.7749, -122.4194), // San Francisco
        zoom: 12.0,
      ),
      markers: <Marker>{
        const Marker(
          markerId: MarkerId('marker_1'),
          position: LatLng(37.7749, -122.4194),
          infoWindow: InfoWindow(
            title: 'Marcador 1',
            snippet: 'Descripción del marcador 1',
          ),
        ),
      },
    );
  }
}
