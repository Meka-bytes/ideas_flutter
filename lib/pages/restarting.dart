import 'dart:ffi';

import 'package:flutter/material.dart';

// so basically this is how to extract a widget into a method
//to make your work more neat and understandable
//you would convert widget to classes
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //starting with a safe area to avoid conflict with the
      //screen of the device
      body: SafeArea(
        /*the singlechild... gives the ability for vertical and
        horizontal scrolling to a single child widget*/
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const RowWidget(),
                _buildHorizontalRow(),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                _buildRowAnColumn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRowAnColumn() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              color: Colors.amber,
              height: 40.0,
              width: 40.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            Divider(),
            _buildRowAndStack(),
            Divider(),
            Text('End of the line')
          ],
        )
      ],
    );
  }

  Row _buildRowAndStack() {
    //converted the row and stack to a method
    return Row(
      children: <Widget>[
        //next... adding more widgets
        //the circle avatae
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100.0,
          // the stack widget used to stack widgets
          child: Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.amber,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                color: Colors.brown,
              )
            ],
          ),
        )
      ],
    );
  }

  Row _buildHorizontalRow() {
    // converted the row into a method
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        Padding(padding: EdgeInsets.all(16.0)),
        Expanded(
          child: Container(height: 40.0, width: 40.0, color: Colors.amber),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}
