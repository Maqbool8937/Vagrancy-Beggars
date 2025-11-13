import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:vagrancy_beggars/view/screens/confirmation_screen.dart';
import 'package:vagrancy_beggars/view/screens/final_step_screen.dart';
import 'package:vagrancy_beggars/view/screens/personal_information_screen.dart';
import 'package:vagrancy_beggars/view/screens/photo_location_screen.dart';
import 'package:vagrancy_beggars/view/screens/settings_logout.dart';

void main() async {
  WidgetsFlutterBinding();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return ScreenUtilInit(
      designSize: Size(mediaQuerySize.width, mediaQuerySize.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SettingsLogout(),
      ),
    );
  }
}
