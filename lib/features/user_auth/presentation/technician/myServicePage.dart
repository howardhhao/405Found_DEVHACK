
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'technicianWidget.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';



class MyServicePage extends StatefulWidget {
  DateTime day;

  MyServicePage({required this.day});

  @override
  State<MyServicePage> createState() => _MyServicePageState();
}

class _MyServicePageState extends State<MyServicePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height*0.1,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromRGBO(66, 150, 144, 0.8),Color.fromRGBO(175, 211, 209, 1)], // Change to your desired colors
              ),
          ),
        ),
        title: Text(
          'My Service',
            style: TextStyle(
              color: Colors.black
            ),
            
          ),
          centerTitle: true,
        backgroundColor: Colors.white,
        
      ),
      body: Container(
        decoration: BoxDecoration(
        gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white,Color.fromRGBO(59,131,137,0.25),Colors.white], // Change to your desired colors
              ),
        ),
        child: Column(
          children: [
            columnSpace(ratio: 0.05),
            // CalendarWidget(),
            DateNavigator(day: widget.day)
            // CalendarWidget()
          ],
        ),
      )
    );
  }
}