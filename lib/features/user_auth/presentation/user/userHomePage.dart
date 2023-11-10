import 'package:flutter_firebase/features/user_auth/presentation/technician/technicianWidget.dart';

import 'widgetList.dart';
import 'package:flutter/material.dart';


class userHomePage extends StatefulWidget {
  const userHomePage({super.key});

  @override
  State<userHomePage> createState() => _userHomePageState();
}

class _userHomePageState extends State<userHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          // gradient: const LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [Color.fromRGBO(255,167,0,100), Colors.white], // Change to your desired colors
          // ),
          color: Color.fromRGBO(255, 213, 139, 1)
        ),


        child: Column(
          children: [
            
            Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height*0.26,
                  
                ),
                Positioned(
                  
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    decoration: BoxDecoration(
                      gradient:  LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color.fromRGBO(255, 233, 194, 100),Color.fromRGBO(233, 213, 139, 100)],
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
                      HiTech(TechName: ' Ney',user: 0),
                    ],
                  )
                  ),
                
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     HomeTechIcon(),
            //     HomeTechText()
            //   ],
            // ),
            // columnSpace(ratio: 0.03),
            Column(
              children: [
                AboutUs_noti(title: 'About us'),
                columnSpace(ratio: 0.03),
                noti(),
                
              ],
            )
          ]
        ),
      ),
    );
  }
}

class HiTech extends StatefulWidget {
  String TechName;
  int user;

  HiTech({required this.TechName, required this.user});

  @override
  State<HiTech> createState() => _HiTechState();
}
class _HiTechState extends State<HiTech> {
  List<Color> colorrr = [Color.fromRGBO(255, 233, 194, 100),Color.fromRGBO(181, 223, 220, 1),];
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: colorrr[widget.user],
        borderRadius: BorderRadius.circular(15)
      ),
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    ' Hi,',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    widget.TechName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Icon(
                    Icons.waving_hand,
                    color: Colors.yellow,
                    size: 36,
                  )
                ],
              ),
              Text(
                'Good Evening!',
                style: TextStyle(
                  color: Color.fromRGBO(136, 136, 136, 1),
                  fontSize: 20
                ),
              )
            ],
          ),
          Image.asset('assets/image/icon.png')
        ],
     ),
);
}
}