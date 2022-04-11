import 'package:design/screens/basic_design.dart';
import 'package:design/screens/home_screen.dart';
import 'package:design/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
 void main() => runApp(const MyApp());
 
 class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

     return MaterialApp(
       title: 'Material App',
       debugShowCheckedModeBanner: false,
       initialRoute: 'home_screen',
       theme: ThemeData.dark(),
       routes: {
         'basic_design':(_)=> const BasicDesignScreen(),
         'scroll_screen':(_)=> const ScrollScreen(),
         'home_screen':(_)=> const HomeScreen()
         
       },
     );
   }
 }

