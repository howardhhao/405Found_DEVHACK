
import 'package:flutter/material.dart';
import 'technicianWidget.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';

class CustomerRequestPage extends StatefulWidget {
  const CustomerRequestPage({super.key});

  @override
  State<CustomerRequestPage> createState() => _CustomerRequestPageState();
}

class _CustomerRequestPageState extends State<CustomerRequestPage> {
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
          'Customer Request',
            style: TextStyle(
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
child: Row(
          children: [
            leftPadding(ratio: 0.1),
            Column(
              
              children: [
                columnSpace(ratio: 0.02),
                requestDetailsBox(
                  exclusive: false, 
                  customerName: ' ', 
                  date: '9/11/2023', 
                  time: '11:50', 
                  typeOfService: 'kipas rosak'
                  ),
                  columnSpace(ratio: 0.02),
                requestDetailsBox(
                  exclusive: true, 
                  customerName: ' Joyee', 
                  date: '9/11/2023', 
                  time: '16:40', 
                  typeOfService: 'lampu rosak'
                  ),
                  columnSpace(ratio: 0.02),
                requestDetailsBox(
                  exclusive: false, 
                  customerName: ' ', 
                  date: '9/11/2023', 
                  time: '11:50', 
                  typeOfService: 'kipas rosak'
                  ),
                  columnSpace(ratio: 0.02),
                requestDetailsBox(
                  exclusive: false, 
                  customerName: ' ', 
                  date: '9/11/2023', 
                  time: '11:50', 
                  typeOfService: 'kipas rosak'
                  ),
                  columnSpace(ratio: 0.02),
                requestDetailsBox(
                  exclusive: true, 
                  customerName: ' Joyee', 
                  date: '9/11/2023', 
                  time: '11:50', 
                  typeOfService: 'kipas rosak'
                  ),
                  columnSpace(ratio: 0.02),
              ],
        ),
          ],
        )
        )
        
        
      )
    );
  }
}