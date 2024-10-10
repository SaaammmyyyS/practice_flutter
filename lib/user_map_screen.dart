import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UserMapScreen extends StatelessWidget {
  final double latitude;
  final double longitude;

  const UserMapScreen({super.key, required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    // Log the latitude and longitude values to the console
    debugPrint('Latitude: $latitude, Longitude: $longitude');

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Location'),
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(latitude, longitude), // Changed initialCenter to center
          initialZoom: 1.0, // Adjust this value to zoom out more if needed
        ),
        children: [
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png", // Single domain
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(latitude, longitude),
                width: 80.0,
                height: 80.0,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
