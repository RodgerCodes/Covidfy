import 'package:flutter/material.dart';

class World extends StatefulWidget {
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> {
  Future<Null> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 3), (){

    });
  }

  Map dataset;
  @override
  Widget build(BuildContext context) {
    dataset = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('World Stats'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body:RefreshIndicator(
        onRefresh: _handleRefresh,
        child: ListView(
          children: <Widget>[
             Container(
               margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
               child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Card(
                    color: Colors.grey[900],
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 9, 50, 55),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text('Total cases',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                          ),
                          Text(dataset['totalcases'],
                          style: TextStyle(
                            color:Colors.white
                          ),)
                        ],
                      ),
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Card(
                    color: Colors.grey[900],
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(45, 9, 45, 55),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text('Active Cases',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                            ),),
                          ),
                          Text(dataset['activeCases'],
                          style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      ),
                    )
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Card(
                    color: Colors.grey[900],
                    child: Padding(
                      padding:EdgeInsets.fromLTRB(45, 9, 45, 55),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text('Total Deaths',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                          ),
                          Text(dataset['totalDeaths'],
                          style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
              ),
            ),
            Card(
                  color: Colors.grey[900],
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 4, 20, 55),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text('Total Recoveries',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ),
                        Text(dataset['totalRecovered'],
                        style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
            )
          ],
        ),
             ),
             Container(
               margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
               child: Text('#StaySafe',
               style: TextStyle(
                 color:Colors.white
               ),),
             )
          ],
        ),
      )
    );
  }
}