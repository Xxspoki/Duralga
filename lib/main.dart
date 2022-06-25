import 'package:duralga/screens/home/home_screen.dart';
import 'package:duralga/theme/light_theme.dart';
// import 'package:duralga/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // NavigationPages np = Get.put(NavigationPages());
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Duralga',
      // darkTheme: darkTheme(),
      theme: lightTheme(),
      home: const HomeScreen(),
      // getPages: np.pages,
    );
  }
}
