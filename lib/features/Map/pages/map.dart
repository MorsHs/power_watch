
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:latlong2/latlong.dart';
import 'package:power_watch/services/MapLoader.dart';

class MyMap extends StatefulWidget {
  const new({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  @override
  void initState() {
    super.initState();
    Maploader().getMapsAvailable();
  }
  @override
  Widget build(BuildContext context) {
    Maploader().getMapsAvailable();
    return FlutterMap(
      options: MapOptions(

        initialCenter: LatLng(7.4478, 125.8078),
        initialZoom: 12,
      ),
      children: [
        TileLayer(
          // Bring your own tiles
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // For demonstration only
        ),
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () => launchUrl(
                Uri.parse('https://openstreetmap.org/copyright'),
              ), // (external)
            ),
          ],
        ),
      ],
    );
  }
}
