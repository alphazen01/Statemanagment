import 'package:demo/custom_theme.dart';
import 'package:demo/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';


void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Parvej",
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}



