import 'package:flutter/material.dart';
import '../constants.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              AspectRatio(
                aspectRatio: 10,
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
              Text(
                'FLUTTER WEB',
                style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
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
            ]),
      ),
    );
  }
}