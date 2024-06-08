import 'dart:ffi';
import 'package:flutter/material.dart';

class working extends StatelessWidget {
  const working({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],

          //using the flexiblesoace ad the safearea widget or tools
          /*
        -The flexiblespace property is stacke behing the Toolbar Or TabBAr
        widget. The height is usaully the same as the AppBar Widget's
        height.A background image is commonly applied to the flexibleSpace property, but any
        widget such as an Icon could be used
         */
          flexibleSpace: SafeArea(
            child: Icon(Icons.photo_camera, size: 75.0, color: Colors.white),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
            )
          ],
        ));
  }
}
