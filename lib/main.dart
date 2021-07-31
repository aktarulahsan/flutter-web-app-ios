import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/controllers/menu_controller.dart';
import 'package:flutterweb/main/main_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // Get.put(Controller());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Admin Panel',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        home: MainScreen()
        // home: MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(
        //       create: (context) => MenuController(),
        //     ),
        //   ],
        //   child: MainScreen(),
        // ),
        );
  }
}
