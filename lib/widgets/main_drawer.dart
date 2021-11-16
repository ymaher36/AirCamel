import 'dart:ffi';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: Column(
         children: <Widget> [
            Container(
              height: 120,
              width: 100,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
             
            ),
            SizedBox(height: 20),
            

         ])
      
    );
  }
}