import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void fetchdata() async {
    await Future.delayed(Duration(seconds: 7), () => {
      Navigator.pushReplacementNamed(context, '/home')
    });
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
                child: Column(
           children: <Widget>[
             Padding(
               padding: EdgeInsets.fromLTRB(100, 10, 0, 0),
               child: Image.asset('assets/covidy.png',
               width: 200,
               height: 150,),
             ),
             Container(
               margin: EdgeInsets.fromLTRB(120, 450, 0, 0),
               child: SpinKitCubeGrid(
                 color: Colors.grey[900],
                 size: 50,
               ),
             )
           ],
         ),
       ),
    );
  }
}