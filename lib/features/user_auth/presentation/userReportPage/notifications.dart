import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {

  List <String> title = [
    'Appointment Confirmed',
    'Appointment Reminder',
    'Service Status Update'
  ];

  List <String> description = [
    'Your repair appointment with [Technicians Name] is confirmed for [Date and Time].',
    'Dont forget, your repair appointment with [Technicians Name] is tomorrow at [Time].',
    'Great news! Your repair service is complete. You can review and rate your experience now.'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          message(title: title[0],description: description[0]),
          message(title: title[1],description: description[1]),
          message(title: title[2],description: description[2]),
          
        ],
      ),
    );
  }
}

class message extends StatefulWidget {
  final String title;
  final String description;
message({required this.title, required this.description});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
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
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxS 
                    ]
                        ),
              

              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                      
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
          
        )

        

    );
  }
}