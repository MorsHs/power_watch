import 'dart:convert';

import 'package:flutter/services.dart';

class Maploader {
  Future<void> getMapsAvailable() async {
    try {
      final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
      final mapFiles = manifest.listAssets().where((element) {
        return element.startsWith('assets/geojson/') &&
            (element.endsWith('.json') || element.endsWith('.geojson'));
      }).toList();
    
      for (final file in mapFiles) {
        final content = await rootBundle.loadString(file);
        final geoJson = jsonDecode(content);
       //print(content);
      }
    } catch (e) {
      print(e);
    }
  }
}
