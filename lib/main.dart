import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:infaa/demand.dart';
import 'package:infaa/iftarSaim.dart';
import 'package:infaa/service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:infaa/Login.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:AnimatedSplashScreen(
         splash:  Image.asset("assets/logo_infaa.png",
               fit: BoxFit.fill,  ),
         nextScreen:Login(),
         splashTransition: SplashTransition.fadeTransition,
         backgroundColor: const Color(0xff542a7d),
       ) ,
    );
  }
  //Widget currentPage =Login();

}

