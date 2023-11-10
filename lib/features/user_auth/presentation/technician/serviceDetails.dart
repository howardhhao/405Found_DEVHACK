
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'technicianWidget.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';

class ServiceDetails extends StatefulWidget {
  bool accepted;
  int user;
  ServiceDetails({required this.accepted, required this.user});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {

  List<List<Color>> appbar = [
    [Color.fromRGBO(66, 150, 144, 0.8),Color.fromRGBO(175, 211, 209, 1)],
    [Color.fromRGBO(255, 213, 139, 1),Color.fromRGBO(255, 213, 139, 1)]
  ];

  List<List<Color>> background = [
    [Colors.white,Color.fromRGBO(59,131,137,0.25),Colors.white],
    [Colors.white,Color.fromRGBO(255, 168, 0, 0.15),Colors.white]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height*0.1,
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                
                colors: appbar[widget.user], // Change to your desired colors
              ),
          ),
        ),
        title: Text(
          'Service Details',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 24,
            ),
            
          ),
          centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,

      ),
      body: Container(
        decoration:  BoxDecoration(
        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: background[widget.user], // Change to your desired colors
              ),
      ),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            columnSpace(ratio: 0.025),
            Row(
              children: [
                leftPadding(ratio: 0.12),
                Text(
                  'Customer Details',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                )
              ],
            ),
            columnSpace(ratio: 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomerDetailsBox(name: 'Joyee', phone: '012-3456789', address: '2, Taman Jaya, Ryan Miho, 12345 KL')
              ],
            ),
            columnSpace(ratio: 0.015),
            Row(
              children: [
                leftPadding(ratio: 0.12),
                Text(
                  'Service Details',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                )
              ],
            ),
            columnSpace(ratio: 0.015),
            ServiceDetilsBox(
              
              date: '${'2023'}/${'11'}/${'12'}', 
              time: '${11}:${50}', 
              repairItem: 'Kipas', 
              Description: 'Takleh pusing lahh kipas aku', 
              image: const AssetImage(
                  'assets/image/icon.png')
            ),
            columnSpace(ratio: 0.015),
            Row(
              children: [
                leftPadding(ratio: 0.12),
                Text(
                  'Price Range',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              ],
            ),
            columnSpace(ratio: 0.015),
            Row(
              children: [
                leftPadding(ratio: 0.12),
                PriceBox(minprice: 100.00, maxprice: 120.00)
              ],
            ),
            columnSpace(ratio: 0.05),
            Container(
              child: Column(
                children: [
                  Visibility(
                    visible: !widget.accepted, // Hide the widget when accepted is false
                    child: const ServiceWaitingAcceptance(),
                  ),
                  Visibility(
                    visible: widget.accepted, // Hide the widget when accepted is false
                    child: const cancelServiceButton(),
                  ),
                  columnSpace(ratio: 0.05)
                ],
              ),
              
            )
            

          ],
          

        ),        
      )
        
      ),
    );
  }
}
