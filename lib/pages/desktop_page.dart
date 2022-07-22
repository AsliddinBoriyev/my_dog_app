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
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // open drawer
            myDrawer,
            Expanded(
              flex: 4,
              child: Column(
                children:  [
                  // first 4 boxes in grid
                  const AspectRatio(
                    aspectRatio: 10,
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  const Text(
                    'FLUTTER WEB',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'THE BASICS',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'In this course we will go over the basics of using',
                    style: TextStyle(
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
                    style:  TextStyle(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
