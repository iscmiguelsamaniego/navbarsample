import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

//todo https://pub.dev/packages/flutter_map_marker_cluster
class MapSample extends StatefulWidget{
  const MapSample({super.key});

  @override
  State<MapSample> createState() {
    return _MapSampleState();
  }
}

class _MapSampleState extends State<MapSample>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("openstreetmap Flutter"),
      ),
      body: Container(
        child: FlutterMap(
          options:
          MapOptions(center: LatLng(-12.069783, -77.034057), zoom: 13.0),
          layers: [
            TileLayerOptions(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
            MarkerLayerOptions(markers: [
              Marker(
                  width: 30.0,
                  height: 30.0,
                  point: LatLng(-12.069783, -77.034057),
                  builder: (ctx) => Container(
                      child: Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      )))
            ])
          ],
        ),
      ),
    );
  }
}