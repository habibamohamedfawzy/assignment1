import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_a/interface/appointment_container.dart';
import 'Package:task_a/interface/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          leading: Image.asset('imgs/stethoscope.png'
            ,
            scale: 10,),
          backgroundColor: Colors.blue,
          title: Text("Appointments"),

        ),
      endDrawer: Drawer(
          child: ListView(
              children: [
                ListTile(
                  title: Text("My Account"),
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2(), // Corrected syntax
                        ),
                      );
                    },
                ),
              ]
          )
      ),
        body:
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [ Padding(
            padding: const EdgeInsets.all(16.0),
    ),
            Container(
                child: Text(" Wednesday ,22 May 2019" , style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,

                  ),)),
          SizedBox(height: 20.0,),
          Expanded(
            child: ListView.separated(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  return appointments[index];
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                    thickness: 0.8,
                    indent: 20,
                    endIndent: 20,
                  );
                }),)
    ],
    ),
    );
  }
}