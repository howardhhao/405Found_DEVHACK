import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/technician/MyServiceCalendar.dart';
import '../technician/customerRequestPage.dart';
import '../technician/myServicePage.dart';
import '../technician/technicianHomePage.dart';
import '../technician/technicianPerformance.dart';
import '../technician/technicianProfilePage.dart';
// void main() {
//   runApp(const MyApp());
// }
import '../userMyBookingPage/userMyBookingPage.dart';
import 'package:flutter/material.dart';

import '../userReportPage/userReporPage.dart';
import '../userReportPage/servicerequestform.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(     
//       home: const userEnterApp(),
//     );
//   }
// }






class TechnicianEnterApp extends StatelessWidget {
  const TechnicianEnterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TechEnterApp(),
    );
  }
}

class TechEnterApp extends StatefulWidget {
  const TechEnterApp({super.key});

  @override
  State<TechEnterApp> createState() => _TechEnterAppState();
}

class _TechEnterAppState extends State<TechEnterApp> {
  @override
  int _currentIndex = 0; // Index of the selected tab

  final List<Widget> _tabs = [
    const TechniciansHomePage(),
    const CustomerRequestPage(),
     MyServiceCalendar(),
    const TechPerformancePage(),
    const userProfilePage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex], // Display the selected tab content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Current selected tab index
        type: BottomNavigationBarType.fixed, // To show all labels
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.receipt_rounded),
            label: 'Request',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.handyman_outlined),
            label: 'My Service',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_outlined),
            label: 'Performance',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Change the selected tab
          });
        },
      ),
    );
  }
}
