import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_a/interface/appointment_container.dart';
import 'package:task_a/interface/button.dart';
import 'package:task_a/interface/info_row.dart';
import 'package:task_a/interface/page1.dart';
import 'package:task_a/interface/button.dart';

class Page3 extends StatelessWidget {
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
        title: Text("Patient's Account "),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                  child: Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('imgs/patient.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              " Patient name ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            MyButton('Medical History')
                          ],
                        ),
                      ])))
            ],
          ),
          InfoRow("imgs/clock.png", "8:00-9:30"),
          InfoRow("imgs/smartphone.png", "0156664951"),
          InfoRow("imgs/pin.png", "st 460 giza"),
          InfoRow("imgs/file.png", "Medical docs"),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 50,
                ),
                child: MyButton("start procedures"),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                  ),
                  child: ElevatedButton(onPressed: null, child: Text('Edit')))
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(
                left: 50,
              ),
              child: MyButton("Back"),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 100,
              ),
              child: MyButton("Patient Missing"),
            ),
          ],)
        ],
      ),
    );
  }
}
