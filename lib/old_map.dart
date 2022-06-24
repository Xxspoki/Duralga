// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:next_bus_sg/core/models/index.dart';
// import 'package:next_bus_sg/core/providers/duralga_data_provider.dart.dart';
// import 'package:provider/provider.dart';

// class CachedTileProvider extends TileProvider {
//   const CachedTileProvider();

//   @override
//   ImageProvider getImage(Coords<num> coords, TileLayerOptions options) {
//     // return NetworkImage(getTileUrl(coords, options));
//     return CachedNetworkImageProvider(
//       getTileUrl(coords, options),
//     );
//   }
// }

// class MapWidget extends StatefulWidget {
//   MapWidget({Key? key, required GlobalKey mapKey}) : super(key: key);
//   final GlobalKey _mapKey = GlobalKey();

//   @override
//   State<MapWidget> createState() => _MapWidgetState();
// }

// class _MapWidgetState extends State<MapWidget> {
//   // final MapController mapController = MapController();

//   Widget build(BuildContext context) {
//     List<Stop> stops = context.watch<DuralgaDataProvider>().stops;

//     List<Marker> markers = stops
//         .map(
//           (Stop e) => Marker(
//             width: 100.0,
//             height: 100.0,
//             point: LatLng(
//                 double.parse(e.location[0]), double.parse(e.location[1])),
//             builder: (ctx) => Icon(
//               Icons.location_on,
//               color: Colors.blue,
//             ),
//           ),
//         )
//         .toList();

//     return FlutterMap(
//       options: MapOptions(
//         plugins: [MarkerClusterPlugin()],
//         center: LatLng(37.9401, 58.3878),
//         zoom: 12.0,
//       ),
//       layers: [
//         TileLayerOptions(
//           tileProvider: const CachedTileProvider(),
//           urlTemplate: "http://tile.openstreetmap.org/{z}/{x}/{y}.png",
//           subdomains: ['a', 'b', 'c'],
//           attributionBuilder: (_) {
//             return const Text("© OurStreetMap contributors");
//           },
//         ),
//         MarkerClusterLayerOptions(
//           maxClusterRadius: 120,
//           size: Size(28, 28),
//           fitBoundsOptions: FitBoundsOptions(
//             padding: EdgeInsets.all(50),
//           ),
//           markers: markers,
//           polygonOptions: PolygonOptions(
//               borderColor: Colors.blueAccent,
//               color: Colors.black12,
//               borderStrokeWidth: 3),
//           builder: (context, markers) {
//             return FloatingActionButton(
//               heroTag: markers,
//               child: Text(markers.length.toString()),
//               onPressed: null,
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
