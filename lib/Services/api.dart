import 'package:http/http.dart';
import 'dart:convert';

class api{
  String data1 ;
  String data2 ;
  String tc;
  String td;
  String tr;
  String ac;

  api({this.data1, this.data2});

  Future<void> getData() async {
    try{
       Response response = await  get('https://disease.sh/v2/countries/Malawi?yesterday=true&strict=true');
       Map data = jsonDecode(response.body);
       int cases = data['cases'];
       int deaths = data['deaths'];
       int active = data['active'];
       int recovered = data['recovered'];
       tc = cases.toString();
       td = deaths.toString();
       tr = recovered.toString();
       ac = active.toString();
    }
    catch(err){
      tc = 'No internet';
      td = 'No internet';
      tr = 'No internet ';
      ac = 'No internet';
    }
  }
}

api instance = api(data1:'hello', data2: 'please');