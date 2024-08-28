import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_a/interface/button.dart';
import 'package:task_a/interface/info_row.dart';
import 'package:task_a/interface/page1.dart';
import 'package:task_a/interface/button.dart';
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'imgs/stethoscope.png',
          scale: 10,
        ),
        backgroundColor: Colors.blue,
        title: Text("My Account"),
      ),
      endDrawer: Drawer(
            child: ListView(children: [
          ListTile(
            title: Text("My Appointments"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
        ])),
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  child: Column(children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('imgs/doc.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Maria Leoana leonte",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text('HCP name',
                    style: TextStyle(color: Colors.grey, fontSize: 15))
              ])),  InfoRow('imgs/smartphone.png',"0174624899"),
              InfoRow('imgs/mail.png', " m@gmail.com"),
              InfoRow('imgs/suitcase.png', "25 walaby sydney st"),
              MyButton("Back")
            ],
          ),
        )
    );
  }
}