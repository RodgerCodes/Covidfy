import 'package:flutter/material.dart';

class Prevention extends StatefulWidget {
  @override
  _PreventionState createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
       appBar: AppBar(
         title: Text('Prevention'),
         centerTitle: true,
         backgroundColor: Colors.grey[900],
       ),
       body:Column(
         children: <Widget>[
           Container(
             padding: EdgeInsets.fromLTRB(20, 70, 0, 0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.fromLTRB(0,0, 0, 5),
                   child: Text('Wash hands frequently with Soap',
                   style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                   ),),
                 ),
                 Padding(
                   padding:EdgeInsets.fromLTRB(0, 0, 0, 5),
                   child: Text('Avoid touching your nose, mouth and eyes',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20
                   ),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                   child: Text('Avoid Crowded Places',
                   style: TextStyle(
                     color:Colors.white,
                     fontSize: 20
                   ),),
                 ),
                 Text('Stay 6ft or 1 meter apart from another perrson',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 20
                 ),),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
             padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
             child: Column(
               children: <Widget>[
                 Text('Note:',
                 style: TextStyle(
                   color:Colors.white
                 ),),
                 Text('The information above has been obtained from Center for Disease Control (CDC)',
                 style: TextStyle(
                   color: Colors.white
                 ),)
               ],
             ),
           )
         ],
       ),
    );
  }
}