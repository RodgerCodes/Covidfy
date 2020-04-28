import 'package:flutter/material.dart';

class Prevention extends StatefulWidget {
  @override
  _PreventionState createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {
  List<String> prevention = [
    
  ];
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
         children: prevention.map((prevent){
           return Text(prevent);
         }).toList(),
       ) ,

    );
  }
}