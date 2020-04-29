import 'package:app7/Services/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app7/Services/api.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void pushData() async{
      api instance = api(data2: 'hello', data1: 'please');
       await instance.getData();
      Navigator.pushNamed(context, '/world',arguments: {
        'totalcases':instance.tc,
        'totalDeaths':instance.td,
        'totalRecovered':instance.tr,
        'activeCases':instance.ac
      });
  }

  Future<Null> _handlerefresh() async{
    return await Future.delayed(Duration(seconds: 3), (){

    });
  }

  createAlertDialog(BuildContext context){
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        title: Text('About'),
        content:Text('Covidfy app v1.0.0 Developed by Rodger Kumwanje',
        style: TextStyle(
          fontSize: 19
        ),),
        actions: <Widget>[
          MaterialButton(
            child: Text('OK',
            style: TextStyle(
              fontSize:15,
              color: Colors.cyan
            ),),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      );
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('COVIDFY'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return Constants.Choices.map((String choice){
                return PopupMenuItem(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            onSelected: choiceAction,
            
            )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _handlerefresh,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                children: <Widget>[
                  Text('Corona Virus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                  Text(
                    'call toll free number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: Column(
                children: <Widget>[
                Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Card(
                       color: Colors.grey[900],
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                            child: IconButton(
                              icon: Icon(
                                Icons.phone,
                                color: Colors.red,
                                size: 50,
                              ),
                              onPressed: (){
                                launch('tel:/54747');
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 35),
                            child: Text(
                              'Call Number'
                              ,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:20,
                                fontWeight:FontWeight.bold
                              ),),
                          )
                        ],
                      ),
                     ),
                     Card(
                       color: Colors.grey[900],
                       child:Column(
                         children: <Widget>[
                            Padding(
                              padding:EdgeInsets.fromLTRB(0, 10, 5, 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.local_hospital,
                                  size: 50,
                                  color: Colors.red,
                                ),
                                onPressed: (){
                                  Navigator.pushNamed(context, '/signs');
                                },
                              ),
                            ),
                            Text('Signs and',
                            style: TextStyle(
                               fontSize: 20,
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                            ),),
                            Padding(
                              padding:EdgeInsets.fromLTRB(30, 0, 30, 20),
                              child: Text(
                                'Symptoms',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            )
                         ],
                       ) ,
                     )
                   ],
                 ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      color: Colors.grey[900],
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.fromLTRB(0, 10, 5, 10),
                            child: IconButton(
                              icon:Icon(
                                Icons.help,
                                color: Colors.red,
                                size: 50,
                              ),
                              onPressed: (){
                                Navigator.pushNamed(context, '/prevention');
                              },
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.fromLTRB(35, 5, 20, 35) ,
                            child: Text(
                              'Prevention',
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white
                               ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.grey[900],
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.fromLTRB(0, 10, 5, 10) ,
                            child: IconButton(
                              icon: Icon(
                                Icons.insert_chart,
                                color: Colors.red,
                                size: 50,
                              ),
                              onPressed: (){
                                pushData();
                                
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 5, 25, 38),
                            child: Text(
                              'World Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
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

 void choiceAction(String choice){
   if(choice == Constants.About){
     createAlertDialog(context);
   }
   else if(choice == Constants.Share){
     Share.share('Download the app on google playstore and checkout https://rodgercodes.netlify.com');
   }
   else if(choice == Constants.Exit){
     SystemNavigator.pop();
   }
 }
}