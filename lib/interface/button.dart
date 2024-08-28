import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_a/interface/page1.dart';
import 'package:task_a/interface/page1.dart';
class MyButton extends StatelessWidget{
  String text;


  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
      
    }
        , child:Text(text,textAlign: TextAlign.center,) );
  }
}