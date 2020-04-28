import 'package:app7/pages/Home.dart';
import 'package:app7/pages/Signs.dart';
import 'package:app7/pages/Splash.dart';
import 'package:app7/pages/WorldStats.dart';
import 'package:app7/pages/prevention.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes:{
    '/':(context) => Splash(),
    '/home':(context) => Home(),
    '/signs':(context) => Signs(),
    '/world':(context) => World(),
    '/prevention':(context) => Prevention()
  }
));