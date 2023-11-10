import 'package:flutter_firebase/features/user_auth/presentation/technician/serviceDetails.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';

import 'bookingDetails.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {

  List <String> date = [
    '3/11/2023',
    '4/11/2023',
    '5/11/2023'
  ];

  List <String> time = [
    '9.00am',
    '10.00am',
    '11.00am'
  ];

  List<String> typeOfService = [
    'Water',
    'Wifi',
    'Appliance'
  ];

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ServiceDetails(
                accepted: true,
                user: 1,
              )),
            );
        },
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


class event extends StatefulWidget {
  final String Date;
  final String Time;
  final String typeOfService;
  	event({required this.Date, required this.Time, required this.typeOfService});

  @override
  State<event> createState() => _eventState();
}

class _eventState extends State<event> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.025,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width*0.8,
              height: MediaQuery.sizeOf(context).height*0.2,
              decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 0.2,
                    ), //BoxS 
                    ]
                        ),
              

              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      leftPadding(ratio: 0.03),
                      Text(
                        'Date:  ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                        // textAlign: TextAlign.left,
                      ),
                      Text(
                        widget.Date,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                        ),
                        // textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      leftPadding(ratio: 0.03),
                      Text(
                        'Time: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        widget.Time,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      leftPadding(ratio: 0.03),
                      Text(
                        'Types of Service:  ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        widget.typeOfService,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
          
        )

        

    );
  }
}