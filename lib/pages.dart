import 'package:duralga/screens/home/home_screen.dart';
import 'package:duralga/screens/route/route_screen.dart';
import 'package:duralga/screens/setting/setting_screen.dart';
import 'package:get/get.dart';

class NavigationPages {
  List<GetPage<dynamic>> pages = [
    GetPage(name: '/', page: () => const HomeScreen()),
    GetPage(name: '/setting', page: () => const SettingScreen()),
    GetPage(name: '/route', page: () => const RouteScreen()),
    // GetPage(name: "/route-search", page: () => const RouteSearchScreen()),
    // GetPage(name: "/fourth", page: () => Fourth()),
    // GetPage(name: "/fourth", page: () => Fourth()),
    // GetPage(name: "/fourth", page: () => Fourth()),
    // GetPage(name: "/fourth", page: () => Fourth()),
  ];
}
