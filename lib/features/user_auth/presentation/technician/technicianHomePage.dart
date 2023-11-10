
import 'package:flutter/material.dart';
import 'technicianWidget.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';

class TechniciansHomePage extends StatefulWidget {
  const TechniciansHomePage({super.key});

  @override
  State<TechniciansHomePage> createState() => _TechniciansHomePageState();
}

class _TechniciansHomePageState extends State<TechniciansHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white,Color.fromRGBO(59,131,137,0.25),Colors.white], // Change to your desired colors
              ),
      ),
      child: Column(

        children: [
          const HomePageTop(),
          const HomePageGraph(),
          columnSpace(ratio: 0.02),
          const ReminderText(),
          
          ReminderBox(title: 'Up Coming Service', description: 'Do not forget your appointment on 19/11/2023 at 20:00'),
          columnSpace(ratio: 0.02),
          ReminderBox(title: 'Up Coming Service', description: 'Do not forget your appointment on 20/11/2023 at 17:30')
        ],
      ),
    );
  }
}

class HomePageTop extends StatefulWidget {
  const HomePageTop({super.key});

  @override
  State<HomePageTop> createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height*0.26,
          
        ),
        Positioned(
          
          child: Container(
            height: MediaQuery.sizeOf(context).height*0.15,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromRGBO(66, 150, 144, 0.8),Color.fromRGBO(175, 211, 209, 1)], // Change to your desired colors
              ),
            ),
          )
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height*0.08,
          left: MediaQuery.sizeOf(context).width*0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HiTech(TechName: 'Ney'),
            ],
          )
          ),
      ],
    );
  }
}