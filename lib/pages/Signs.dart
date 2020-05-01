import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Signs extends StatefulWidget {
  @override
  _SignsState createState() => _SignsState();
}

class _SignsState extends State<Signs> {

  Future<Null> _handlerefresh() async{
   return await Future.delayed(Duration(seconds: 3),(){
      
    });
  }

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Signs and Symptoms'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: RefreshIndicator(
        onRefresh: _handlerefresh,
        child: ListView(
          children:<Widget>[
            Container(
              child: Column(
                
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Padding(
                         padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                         child: Text('Cough',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20
                  ),),
                       ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Shortness of Breath or difficulty breathing',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Fever',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Chills',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Repeated Shaking with chills',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Muscle pain',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Headache',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('Sore Throat',
                    style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('New loss of taste or smell',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20
                    ),),
                  )
                     ],
                   ),
                  ),
                  Container(
                    margin:EdgeInsets.fromLTRB(0, 30, 0, 10) ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.warning,
                          color: Colors.red,
                          size: 29,
                        ),
                        Text('Experiencing any of the above?',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20
                    ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 23, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Text('Call',
                        style: TextStyle(
                          color: Colors.white
                        ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.red,
                      size: 50,
                    ),
                    onPressed: () {
                      launch('tel:54747');
                    },
                  )
                      ], 
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Text('Note:',
                        style:TextStyle(
                          color: Colors.white
                        ),),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('The information above has been obtained from Center for Disease Control (CDC)',
                          style: TextStyle(
                            color:Colors.white
                          ),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          
          ]
        ),
      ),
    );
  }
}