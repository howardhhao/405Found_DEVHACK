
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'technicianWidget.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';

class TechPerformancePage extends StatefulWidget {
  const TechPerformancePage({super.key});

  @override
  State<TechPerformancePage> createState() => _TechPerformancePageState();
}

class _TechPerformancePageState extends State<TechPerformancePage> {
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
          'Peformance',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 24
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              columnSpace(ratio: 0.02),
              Row(
                children: [
                  leftPadding(ratio: 0.1),
                  chooseDayWeekMonth(),
                  leftPadding(ratio: 0.1)
                ],
              ),
              columnSpace(ratio: 0.02),
              TotalIncomeBox(income: 2136.23),
              columnSpace(ratio: 0.02),
              Row(
                children: [
                  leftPadding(ratio: 0.1),
                  Text(
                    'Transaction History',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  leftPadding(ratio: 0.14),
                  seeAll(),
                  
                ],
              ),
              columnSpace(ratio: 0.02),
              transactionhistoryboxes(income: false, amount: 300.00, date: '9/11/2023',),
              columnSpace(ratio: 0.02),
              transactionhistoryboxes(income: true, amount: 500.00, date: '8/11/2023',),
              columnSpace(ratio: 0.02),
              transactionhistoryboxes(income: false, amount: 200.00, date: '7/11/2023',),
              columnSpace(ratio: 0.05)
            ],
          ),
        ),
        
      ),
    );
  }
}
