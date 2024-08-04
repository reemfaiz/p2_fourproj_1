// ignore_for_file: depend_on_referenced_packages, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';



import 'package:p2_fourproj_1/constans.dart';
import 'package:p2_fourproj_1/page/prod_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
initialRoute: '/',
routes: {
  '/': (context) => const MyWidget () ,
        
      },




      title: "Electrical store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          
          primaryColor: kPrimaryColor,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: kPrimaryColor,
          )),
    
    );
  }
}
