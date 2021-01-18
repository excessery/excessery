import 'package:excessery/pages/homepage.dart';
import 'package:excessery/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'excessery',
    options: FirebaseOptions(
      appId: '1:1010564576831:android:ff77d8b3f6db323e6aaa8a',
      apiKey: 'AIzaSyCoihjv52Gy_a0o2uiexDbFTkUp_UD3SiI',
      messagingSenderId: '1010564576831',
      projectId: 'excessery-62c27',
      databaseURL: 'https://excessery-62c27-default-rtdb.firebaseio.com/',
    ),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(), //change it to login
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff324982),
        body: Center(
          child: Container(
            // constraints: BoxConstraints.expand(),
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: NetworkImage(
            //             ''),
            //         fit: BoxFit.fill)),

            child: Column(children: [
              SizedBox(
                height: 200,
              ),
              Image.asset('assets/logo.png'),
              Text(
                'Excessery',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Save Food.Save Wallet.Save Planet',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
