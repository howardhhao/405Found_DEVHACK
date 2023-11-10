// import 'chooseTechnicians.dart';
// import 'package:flutter/material.dart';
// import '../user/widgetList.dart';

// class servicerequestform extends StatefulWidget {
//   String description;

//   servicerequestform({required this.description});

//   @override
//   State<servicerequestform> createState() => _servicerequestformState();
// }

// class _servicerequestformState extends State<servicerequestform> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: MediaQuery.sizeOf(context).height*0.1,
//         title: Text(
//           widget.description,
//             style: TextStyle(
//               color: Colors.black
//             ),
            
//           ),
//           centerTitle: true,
//         backgroundColor: Color.fromRGBO(255, 213, 139, 1),
//         leading: GestureDetector(
//           child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
//           onTap: () {
//             Navigator.pop(context);
//           } ,
//         ) ,

//       ),

//       body: Container(
//         decoration: BoxDecoration(
//           gradient: const LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             stops: [0.01, 1.2], // Three stops for three colors
//             colors: [
//               Colors.white,
//               Color.fromRGBO(255, 168, 0, 0),
//             ],
//           ),
          
        
//        ),
//        child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: MediaQuery.sizeOf(context).height*0.02,
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children:[
//                 Text(
//                 'Service Request Form',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 23,
//                   color: Colors.black
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//                 ]
//               ),
              
//             ),
//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Full Name'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'name', sufix: Icons.warning, width: 1, height: 0.1,),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Phone Number'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'number', sufix: Icons.warning, width: 1, height: 0.1,),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Email Address'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'email', sufix: Icons.warning, width: 1, height: 0.1,),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Address'),
//             columnSpace(ratio: 0.02),
//             QuestionField(fieldtitle: 'Address', sufix: Icons.warning, width: 1, height: 0.1,),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'City'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'City', sufix: Icons.warning, width: 1, height: 0.1,),
            
//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'State'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'State', sufix: Icons.warning, width: 1, height: 0.1,),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Date of Service'),
//             columnSpace(ratio: 0.03),
//             dateButton(icon: Icons.calendar_month),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Time of Service'),
//             columnSpace(ratio: 0.03),
//             TimeButton(icon: Icons.lock_clock),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Repair Item'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'item', sufix: Icons.warning, width: 1, height: 0.1,),
//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Description'),
//             columnSpace(ratio: 0.03),
//             QuestionField(fieldtitle: 'Description', sufix: Icons.warning, width: 1, height: 0.1),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Photos/Videos'),
//             columnSpace(ratio: 0.03),
//             FileUploadWidget(),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Price Range'),
//             columnSpace(ratio: 0.03),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 leftPadding(ratio: 0.07),
//                 Text(
//                   'RM',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,                   
//                   ),
//                 ),
//                 priceTextField(minOrmax: 'Min',),
//                 Text(
//                   '-',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//                 ),
//                 priceTextField(minOrmax: 'Max',),
//               ],
//             ),
//             columnSpace(ratio: 0.03),
//             popUpPriceRange(),

//             spaceBetwwenQues(),
//             QuestionTitle(QTitle: 'Choose Technicians'),
//             columnSpace(ratio: 0.03),
//             chooseTechniciansButton(),

//             spaceBetwwenQues(),
//             spaceBetwwenQues(),
//             proceedButton(),

//             spaceBetwwenQues()


//           ],
//         ),
//         ),
        
//       ),
      
//     );
      
   
//   }
// }
