import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_a/interface/page3.dart';

class Appointment extends StatelessWidget {
  final String name;
  final String time;

  Appointment({this.name = 'Default Name', this.time = '00:00'});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
            child:
            Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
                color: Colors.blueGrey,
              ),
            ),),
          SizedBox(height: 8.0),
          Row(
            children: [
              Icon(
                Icons.access_time,
                color: Colors.blueGrey,
              ),
              SizedBox(width: 8.0),
              Text(
                time,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

List<Appointment> appointments = [
  Appointment(name: 'Julian Ruja', time: '10:50 AM'),
  Appointment(name: 'Victoria Olari', time: '13:00 PM'),
  Appointment(name: 'Diana Stefan', time: '15:20 PM'),
  Appointment(name: 'Georgie Popa', time: '16:10 PM'),
  Appointment(name: 'Alextandru Sandu', time: '16:40 PM'),
  Appointment(name: 'Dumitru Simona', time: '8:00 PM'),
];
