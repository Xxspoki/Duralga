import 'package:cached_network_image/cached_network_image.dart';
import 'package:duralga/constants.dart';
import 'package:duralga/screens/home/components/bottom_add_widget.dart';
import 'package:duralga/screens/home/components/scrollable_grid_buttons.dart';
import 'package:duralga/screens/home/components/white_center_buttons.dart';
import 'package:duralga/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:location/location.dart';

class CachedTileProvider extends TileProvider {
  const CachedTileProvider();

  @override
  ImageProvider getImage(Coords<num> coords, TileLayerOptions options) {
    // return NetworkImage(getTileUrl(coords, options));
    return CachedNetworkImageProvider(
      getTileUrl(coords, options),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PanelController _panelController = PanelController();
  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: _customFloatingButtons(),
      body: Stack(
        children: [
          Expanded(
            child: FlutterMap(
              options: MapOptions(
                center: center,
                zoom: 12,
              ),
              mapController: _mapController,
              layers: [
                TileLayerOptions(
                  tileProvider: const CachedTileProvider(),
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayerOptions(markers: [
                  Marker(
                    point: center,
                    builder: (ctx) => const Icon(
                      Icons.location_on,
                      color: kBlueColor,
                      size: kIconSize * 1.5,
                    ),
                  )
                ])
              ],
            ),
          ),
          SlidingUpPanel(
            parallaxEnabled: true,
            parallaxOffset: 0.3,
            maxHeight: MediaQuery.of(context).size.height / 2.4,
            minHeight: 120,
            controller: _panelController,
            renderPanelSheet: false,
            collapsed: WhiteFloatingButtons(
                panelController: _panelController), //collapsed
            panel: _floatingPanel(panelController: _panelController),
            // body:
          ),
        ],
      ),
    );
  }

  Padding _customFloatingButtons() {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => Get.to(const SettingScreen()),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/settings.svg',
                color: kBlueColor,
              ),
            ),
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: getCurrentLocation,
            child: const Center(
              child: Icon(
                Icons.near_me,
                color: kBlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _floatingPanel({required PanelController panelController}) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kGreenPrimaryColor.withOpacity(0.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(kBorderRadius / 1.5),
          topRight: Radius.circular(kBorderRadius / 1.5),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              panelController.isPanelOpen
                  ? panelController.close()
                  : panelController.open();
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding / 2),
              width: 40,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const ScrollableGridButtons(),
          const SizedBox(height: 10),
          const BottomAddWidget(),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    setState(() {
      center = LatLng(_locationData.latitude!, _locationData.longitude!);
      _mapController.move(
          LatLng(_locationData.latitude!, _locationData.longitude!), 15);
    });
  }
}
