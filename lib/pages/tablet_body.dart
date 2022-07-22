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
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
               const AspectRatio(
                aspectRatio: 10,
                child:  SizedBox(
                  width: double.infinity,
                ),
              ),
              const Text(
                'FLUTTER WEB',
                style:  TextStyle(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'THE BASICS',
                style:  TextStyle(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'In this course we will go over the basics of using',
                style:  TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Flutter Web for development.Topics will include',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Responsive Layout,Deploying,Font Changes,Hover',
                style:  TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'functionality,Modals and more.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
               const SizedBox(
                height: 60,
              ),
              ElevatedButton(onPressed: (){} , child:Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.green,
                child:  const Text("join Course"),
              ),
              )
            ]),
      ),
    );
  }
}
