import 'package:flutter/material.dart';

import '../constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Expanded(
            flex: 2,
            child: Column(
              children: const [
                 AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
            Text(
              'FLUTTER WEB',
              style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.bold),
            ),
            Text(
              'THE BASICS',
              style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              'In this course we will go over the basics of using',
              style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'Flutter Web for development.Topics will include',
              style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'Responsive Layout,Deploying,Font Changes,Hover',
              style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'functionality,Modals and more.',
              style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
            ),
           ],
        ),
      ),
 ])) );

  }
}