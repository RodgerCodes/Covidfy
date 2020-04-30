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

  Future<Null> _handleRefresh()async{
    return await Future.delayed(Duration(seconds:3),(){
      print('Refreshing');
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
       body: RefreshIndicator(
         onRefresh: _handleRefresh,
         child: ListView(
           children: <Widget>[
              SafeArea(
                child: Column(
           children: <Widget>[
             Padding(
               padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
               child: Image.asset('assets/ncov.png',
               width: 200,
               height: 150,),
             ),
             Container(
               margin: EdgeInsets.fromLTRB(10, 400, 0, 0),
               child: SpinKitFadingCircle(
                 color: Colors.grey[900],
                 size: 50,
               ),
             )
           ],
         ),
       ),
           ],
         ),
       )
    );
  }
}