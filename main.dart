/*
import 'package:flutter/material.dart'; //Android
import 'package:flutter/cupertino.dart'; //iOS

main() {
  runApp(MyApp());
}

//stateless class

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MaterialApp: to get the height and width of device
    return MaterialApp(
      theme: ThemeData(//to set theme for the application
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        
      ),

    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:module2/screen/Drawer.dart';
import 'package:module2/screen/alert.dart';
import 'package:module2/screen/assfltr.dart';
import 'package:module2/screen/basic.dart';
import 'package:module2/screen/calculator.dart';
import 'package:module2/screen/condainer.dart';
import 'package:module2/screen/crossaxis.dart';
import 'package:module2/screen/firstscreen.dart';
import 'package:module2/screen/form.dart';
import 'package:module2/screen/justterexample.dart';
import 'package:module2/screen/list.dart';
import 'package:module2/screen/list2.dart';
import 'package:module2/screen/list3.dart';
import 'package:module2/screen/secocondscreen.dart';
import 'package:module2/screen/splash.dart';
import 'package:module2/screen/menu2.dart';
import 'package:module2/screen/thirdscreen.dart';


main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/':(context)=>firstsc(),
      //   '/secondpage':(context)=>secondsc(),
      //   '/thirdpage':(context)=>thirdsc()
      // },
      debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //     primarySwatch: Colors.grey,
      //   ),
     home:  fltr(),
/*        home: SafeArea(
          child: Scaffold(
            body: SecondPage()
          ),
        )*/
    );
  }
}
