import 'servicerequestform.dart';
import 'package:flutter/material.dart';
import '../user/widgetList.dart';

class userReportIssue extends StatefulWidget {

  @override
  State<userReportIssue> createState() => userReportIssueState();
}

class userReportIssueState extends State<userReportIssue> {

  List <String> description = [
        'Electronic Devices',
        'Water', 
        'Computer Repair',
        'Appliance',
        'Plumbing Repair',
        'Network Repair',
      ];
  
  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      child: Column(
        children: [
          columnSpace(ratio: 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.1),
              Issues(description: description[0], icon: Icons.light),
              leftPadding(ratio: 0.08),
              Issues(description: description[1], icon: Icons.water_drop),
              leftPadding(ratio: 0.1),
            ],
          ),
          columnSpace(ratio: 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.1),
              Issues(description: description[2], icon: Icons.computer),
              leftPadding(ratio: 0.08),
              Issues(description: description[3], icon: Icons.kitchen),
              leftPadding(ratio: 0.1),
            ],
          ),
          columnSpace(ratio: 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.1),
              Issues(description: description[4], icon: Icons.plumbing),
              leftPadding(ratio: 0.08),
              Issues(description: description[5], icon: Icons.wifi),
              leftPadding(ratio: 0.1),
            ],
          ),
        ],
      ),
    );
  }
}


