import 'package:flutter_firebase/features/user_auth/presentation/technician/myServicePage.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/technician/technicianWidget.dart';
import 'package:table_calendar/table_calendar.dart  ';

class MyServiceCalendar extends StatefulWidget {
  const MyServiceCalendar({super.key});

  @override
  State<MyServiceCalendar> createState() => _MyServiceCalendarState();
}

class _MyServiceCalendarState extends State<MyServiceCalendar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            CalendarWidget(),
          ]
        )
      ));
  }
}

class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

  DateTime? _selectedDay; // Use a nullable DateTime

  void _handleDateSelection(DateTime day, DateTime focusedDay) {
  setState(() {
    _selectedDay = day;
  });

  // Navigate to the DateNavigator passing the selected date
  Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MyServicePage(day: day),
                            ),
                          );
  }

  @override
Widget build(BuildContext context) {
  return Material( // Wrap with Material
    child: GestureDetector(
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        // selectedDayPredicate: (day) {
        //   return isSameDay(day, _selectedDay);
        // },
        onDaySelected: _handleDateSelection,
      ),
      // onTap: () => _handleDateSelection(_selectedDay!, _selectedDay!), // You can remove this line if not needed
    ),
  );
}
}



