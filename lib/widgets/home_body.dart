// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:p2_fourproj_1/constans.dart';

class homescrean extends StatelessWidget {
  const homescrean({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        SizedBox(height: 10,),
        Expanded(
            child: Stack(
          children: [
Container(
  decoration: BoxDecoration(
    color: kBackgroundColor,
    borderRadius:BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40)
    )
  ),
),
Container(
  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  decoration: BoxDecoration(
    color:Colors.white,
    borderRadius:BorderRadius.circular(22),
    boxShadow:[ BoxShadow(offset: Offset(0, 15),
    blurRadius: 25,
    color: Colors.black12),
            ]  ),
)


          ],
        ))
      ]),
    );
  }
}
