import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget{
  String imagePath;
  String text;


  InfoRow(this.imagePath, this.text);

  @override
  Widget build(BuildContext context) {

    return Row(

      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Padding(
          padding: EdgeInsets.only(left: 120.0),
          child: Image.asset(
            imagePath,
            width: 30.0, // Adjust the size as needed
            height: 30.0,
          ),
        ),
        SizedBox(width: 10,),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.0, // Adjust the text size as needed
          ),
        ),
      ],
    );
  }
}
