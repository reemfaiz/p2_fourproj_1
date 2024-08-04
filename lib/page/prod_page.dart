// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unused_local_variable

import 'package:flutter/material.dart';

import 'package:p2_fourproj_1/constans.dart';
import 'package:p2_fourproj_1/models/Product.dart';
import 'package:p2_fourproj_1/widgets/home_body.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: apperscrean(),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60
              ,bottom: 20),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            
        ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => productcard(size,products[index]),
              )
          ],
        ))
      ]),
    );
  }

  Stack productcard(Size size) {
     
  
    return Stack(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 25,
                        color: Colors.black12),
                  ]),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(products .image,fit: BoxFit.cover,),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    
                    children: [Text(Product .title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                     Text("جوده صوت عاليه"),
                     SizedBox(height: 22,),
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: kSecondaryColor),
                      child: Text("السعر #900"),
                     )
                    
                    ],
                  ),
                ))
          ]);
  }


  AppBar apperscrean() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "مرحبا بكم في متجر الالكترونيات",
      ),
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}


