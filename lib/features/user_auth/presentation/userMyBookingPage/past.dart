import 'package:flutter/material.dart';
import 'upcoming.dart';

class Past extends StatefulWidget {
  const Past({super.key});

  @override
  State<Past> createState() => _PastState();
}

class _PastState extends State<Past> {
  List <String> date = [
    '27/10/2023',
    '28/10/2023',
    '29/10/2023'
  ];

  List <String> time = [
    '9.00pm',
    '10.00pm',
    '11.00pm'
  ];

  List<String> typeOfService = [
    'Appliance',
    'Water',
    'Wifi',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          event(
              Date: date[0], 
              Time: time[0],
              typeOfService: typeOfService[0],
              ),
              event(
              Date: date[1], 
              Time: time[1],
              typeOfService: typeOfService[1],
              ),
              event(
              Date: date[2], 
              Time: time[2],
              typeOfService: typeOfService[2],
              ),
        ],
      ),
    );
  }
}