import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_dog_app/pages/desktop_page.dart';
import 'package:my_dog_app/pages/desktop_page.dart';
import 'package:my_dog_app/pages/mobile_page.dart';
import 'package:my_dog_app/pages/responsive_layout.dart';
import 'package:my_dog_app/pages/tablet_body.dart';
import 'package:my_dog_app/services/hive_service.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox(HiveService.dbName);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),

      ),
    );
  }
}