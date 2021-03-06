

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ylabs_task2/home_page.dart';
import 'package:ylabs_task2/ongkir_page.dart';

import 'cv_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      
      builder: () => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Juang',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/cv', page: () => CVJuangPage()),
        GetPage(name: '/ongkir', page: () => OngkirPage()),
      ],
      home: HomePage(),
    ));
    
    
    
  }
}

