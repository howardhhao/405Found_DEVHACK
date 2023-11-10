import '../userMyBookingPage/userMyBookingPage.dart';
import 'package:flutter/material.dart';
import 'UserProfilePage.dart';
import 'userHomePage.dart';
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

class userEnterApp extends StatefulWidget {
  const userEnterApp({super.key});

  @override
  State<userEnterApp> createState() => _userEnterAppState();
}

class _userEnterAppState extends State<userEnterApp> {
  @override
  int _currentIndex = 0; // Index of the selected tab

  final List<Widget> _tabs = [
    userHomePage(),
    userReportPage(),
    userMyBookingPage(),
    userProfilePage(),
    userProfilePage(),
  ];

  
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _tabs[_currentIndex], // Display the selected tab content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Current selected tab index
        type: BottomNavigationBarType.fixed, // To show all labels
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Tutorial',
          ),
          BottomNavigationBarItem(
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


