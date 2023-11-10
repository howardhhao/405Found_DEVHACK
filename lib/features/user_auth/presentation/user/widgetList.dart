import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/technician/technicianWidget.dart';
// import '../userReportPage/servicerequestform.dart';
import 'package:flutter_firebase/features/user_auth/presentation/userReportPage/servicerequestform.dart';
import 'package:flutter_firebase/features/user_auth/presentation/userReportPage/userReporPage.dart';
import '../userReportPage/chooseTechnicians.dart';
import '../userReportPage/showPriceWindow.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';
// all page

class leftPadding extends StatelessWidget {
double ratio;

  leftPadding({required this.ratio});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: MediaQuery.sizeOf(context).width*ratio,
          );
  }
}

class columnSpace extends StatelessWidget {
double ratio;

  columnSpace({required this.ratio});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*ratio,
    );
  }
}

// homePage
class HomeTechIcon extends StatelessWidget {
  const HomeTechIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
                  'assets/image/icon.png'
    );
  }
}

class HomeTechText extends StatelessWidget {
  const HomeTechText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
                  'HOME',
                  style: TextStyle(
                    color: Color.fromRGBO(243, 178, 0, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
                        offset: Offset(2.0, 2.0),
                      )
                    ]
                  ),
                ),
                Text(
                  'TECH',
                  style: TextStyle(
                    color: Color.fromRGBO(85, 85, 85, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
                        offset: Offset(2.0, 2.0),
                      )
                    ]
                  ),
                ),
        ],
      ),
    );
  }
}

class AboutUs_noti extends StatefulWidget {
  String title;
  AboutUs_noti({required this.title});

  @override
  State<AboutUs_noti> createState() => _AboutUs_notiState();
}
class _AboutUs_notiState extends State<AboutUs_noti> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.sizeOf(context).width*0.8,
            height: MediaQuery.sizeOf(context).height*0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                columnSpace(ratio: 0.02),
                Row(
                  children: [
                    leftPadding(ratio: 0.05),
                    Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                )
                  ],
                  
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Unsure about repairs? No problem. We connect users with skilled technicians to make it easy. Set your service details and preferred price range, and let our experts handle the rest. ',
                    style: TextStyle(
                      fontSize: 16
                    ),
                    maxLines: 8,
                    textAlign: TextAlign.justify,
                  ),
                  
                )
              ],
            ),
          );
  }
}

class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.sizeOf(context).width*0.8,
            height: MediaQuery.sizeOf(context).height*0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                columnSpace(ratio: 0.02),
                Row(
                  children: [
                    leftPadding(ratio: 0.05),
                    Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                )
                  ],
                  
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    columnSpace(ratio: 0.03),
                    ReminderBox(title: 'Welcome back!', description: 'Thanks for using our app'),
                  ],
                )
                // ReminderBox(title: 'Hi', description: 'Thanks for using our app')
              ]
            ));
  }
}

// user report page
class chooseOne extends StatefulWidget {
  Color Textcolor;
  Color boxColor;
  VoidCallback func;
  String title;

  chooseOne({
    required this.Textcolor,
    required this.title,
    required this.func,
    required this.boxColor
  });

  @override
  State<chooseOne> createState() => _chooseOneState();
}
class _chooseOneState extends State<chooseOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    width: MediaQuery.sizeOf(context).width*0.4,
                    height: MediaQuery.sizeOf(context).height*0.07,
                    decoration:  BoxDecoration(
                      color: widget.boxColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(14)
                      )
                    ),
                    child: TextButton(                
                      onPressed: widget.func,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              color: widget.Textcolor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                              
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
  }
}

// user report issues
class Issues extends StatefulWidget {
 final String description;
  final IconData icon;


Issues({required this.description, required this.icon});
  

  @override
  State<Issues> createState() => _IssuesState();
}
class _IssuesState extends State<Issues> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
                  width: MediaQuery.sizeOf(context).width*0.36,
                  height: MediaQuery.sizeOf(context).width*0.36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 0.1,
                    ), //BoxS 
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => servicerequestform(description: widget.description),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(

                              widget.description,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,                               
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      ),
                      Icon(
                          widget.icon,
                      )
                    ],
                  ),
                );
  }
}

// service request form

class proceedButton extends StatefulWidget {
  const proceedButton({super.key});

  @override
  State<proceedButton> createState() => _proceedButtonState();
}
class _proceedButtonState extends State<proceedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leftPadding(ratio: 0.07),
          Expanded(
            child: Container(
            height: MediaQuery.sizeOf(context).height*0.07,
            child: ElevatedButton(
              onPressed: () {
                final parentState = context.findAncestorStateOfType<_servicerequestformState>();
                if (parentState != null) {
                  parentState._record();
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => userReportPage()),
                );
              },

              child: Text(
                'PROCEED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              ),
          ),
          ),
          leftPadding(ratio: 0.07)
        ],
      ),
    );
  }
}



class priceTextField extends StatefulWidget {
  String minOrmax;

  priceTextField({required this.minOrmax});

  @override
  State<priceTextField> createState() => _priceTextFieldState();
}
class _priceTextFieldState extends State<priceTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          leftPadding(ratio: 0.07),
          Container(
            width: MediaQuery.sizeOf(context).width*0.2,
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              decoration: InputDecoration(
                labelText: widget.minOrmax,
                border: OutlineInputBorder( // Add a border
                borderSide: BorderSide(
                  color: Colors.black, // Border color
                ),
              ),
              )
            )        
          ),
          leftPadding(ratio: 0.07)
        ],
      ),
    )
    ;
  }
}

class chooseTechniciansButton extends StatefulWidget {
  const chooseTechniciansButton({super.key});

  @override
  State<chooseTechniciansButton> createState() => _chooseTechniciansButtonState();
}
class _chooseTechniciansButtonState extends State<chooseTechniciansButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          leftPadding(ratio: 0.07),
          Expanded(child: Container(
            width: MediaQuery.sizeOf(context).width*0.8,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Choose Technicians'),
                      content: chooseTechWindow(), // Use the defined content widget
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the popup
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Choose Technicians',
                style: TextStyle(
                  color: Colors.red
                ),
                ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 213, 139, 1),),
                
              ),
            ),)
          
            
          ),
          leftPadding(ratio: 0.07)
        ],
      ),
    );
  }
}

class popUpPriceRange extends StatefulWidget {
  const popUpPriceRange({super.key});

  @override
  State<popUpPriceRange> createState() => _popUpPriceRangeState();
}
class _popUpPriceRangeState extends State<popUpPriceRange> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          leftPadding(ratio: 0.07),
          Container(
            width: MediaQuery.sizeOf(context).width*0.7,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Suggested Price Range'),
                      content: showPriceWindow(), // Use the defined content widget
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the popup
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                '*view suggested price range',
                style: TextStyle(
                  color: Colors.red
                ),
                ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 213, 139, 1),),
                
              ),
            ),

          )
        ],
      ),
    );
  }
}

class TimeButton extends StatefulWidget {
  IconData icon;

  TimeButton({required this.icon});
  	
  @override
  State<TimeButton> createState() => _TimeButtonState();
}
class _TimeButtonState extends State<TimeButton> {
  TimeOfDay time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          leftPadding(ratio: 0.07),
          Expanded(
            child: ButtonTheme(
              // height: MediaQuery.sizeOf(context).height*0.2,
              child:ElevatedButton(
            
              onPressed: () async{
                final selectedtime  = await pickTime();
                if(selectedtime == null)
                  return;
                
                setState(() => time = selectedtime);
              }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${time.hour}:${time.minute}',
                    style: TextStyle(                       
                      fontSize: 18,               
                    ),
                  ),
                  
                  Icon(widget.icon),
                ],
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 213, 139, 1),
                foregroundColor: Colors.black,
              ),
            )
          
          ),
        ),
            
            
        leftPadding(ratio: 0.07),
        ],
        
      ),
    );    
  }
  Future <TimeOfDay?> pickTime() => showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: 0, minute: 0),
          );
}

class dateButton extends StatefulWidget {
  IconData icon;
  dateButton({required this.icon});

  @override
  State<dateButton> createState() => _dateButtonState();
}
class _dateButtonState extends State<dateButton> {
  DateTime datetime = DateTime(2023,11,5);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          leftPadding(ratio: 0.07),
          Expanded(
            child: ButtonTheme(
              // height: MediaQuery.sizeOf(context).height*0.2,
              child:ElevatedButton(
            
              onPressed: () async{
                final date = await pickDate();
                if(date == null)
                  return;
                
                setState(() => datetime = date);
              }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${datetime.year}/${datetime.month}/${datetime.day}',
                    style: TextStyle(                       
                      fontSize: 18,               
                    ),
                  ),
                  
                  Icon(widget.icon),
                ],
              ),

              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 213, 139, 1),
                foregroundColor: Colors.black,
              ),
            )
          
          ),
        ),
            
            
        leftPadding(ratio: 0.07),
        ],
      ),
    );
  }

  Future <DateTime?> pickDate() => showDatePicker(
    context: context, 
    initialDate: datetime, 
    firstDate: DateTime(1900), 
    lastDate: DateTime(2100)
  );


  


}

class spaceBetwwenQues extends StatefulWidget {
  const spaceBetwwenQues({super.key});

  @override
  State<spaceBetwwenQues> createState() => _spaceBetwwenQuesState();
}
class _spaceBetwwenQuesState extends State<spaceBetwwenQues> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*0.03,
    );
  }
}

class QuestionTitle extends StatefulWidget {
  String QTitle;
  QuestionTitle({required this.QTitle});
  @override
  State<QuestionTitle> createState() => _QuestionTitleState();
}
class _QuestionTitleState extends State<QuestionTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          leftPadding(ratio: 0.07),
          Text(
             widget.QTitle,
             style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.normal,
             ),
          ),
          
        ],
      ),
      
    );
  }
}

class QuestionField extends StatefulWidget {
  String fieldtitle;
  IconData sufix;
  double width;
  double height;
  TextEditingController controller;
  QuestionField({required this.fieldtitle, required this.sufix, required this.width, required this.height, required this.controller});
  @override
  State<QuestionField> createState() => _QuestionFieldState();
}
class _QuestionFieldState extends State<QuestionField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*widget.width,
      height: MediaQuery.sizeOf(context).height*widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          leftPadding(ratio: 0.07),
          Expanded(
            
            child: TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: widget.fieldtitle,                
                suffixIcon: Icon(widget.sufix),
              ),
              minLines: 1,
              maxLines: 3,
            ),
          ),
          leftPadding(ratio: 0.07)
        ],
      )
      
    );
  }
}

class FileUploadWidget extends StatefulWidget {
  @override
  _FileUploadWidgetState createState() => _FileUploadWidgetState();
}
class _FileUploadWidgetState extends State<FileUploadWidget> {
  List<PlatformFile> _selectedFiles = [];

  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true, // Allow the user to select multiple files
    );

  
    if (result != null) {
      setState(() {
        _selectedFiles = result.files;
      });
    }
    
  }

   void _deleteFile(PlatformFile file) {
    setState(() {
      _selectedFiles.remove(file);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            leftPadding(ratio: 0.07),
            Container(
              width: MediaQuery.sizeOf(context).width*0.4, // Adjust the width as needed
              child: ElevatedButton(
                onPressed: _pickFiles, 
                style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 213, 139, 1),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                    Text(
                      'Select Files',
                       style: TextStyle(
                       color: Colors.black
                       ),
                    
                    ),
                    
                    Icon(
                      Icons.upload,
                      color: Colors.black,
                    )
                       
                    
                  ],
                )              
                
              ),
            ),            
            leftPadding(ratio: 0.07)
          ],
        ),
        if (_selectedFiles.isNotEmpty)
          Column(
            children: _selectedFiles.map((file) {
              return ListTile(
                title: Text(file.name),
                subtitle: Text(file.size.toString()),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    _deleteFile(file);
                  },
                ),
              );
            }).toList(),
          ),
              
      ],

    );
  }
}

class servicerequestform extends StatefulWidget {
  String description;

  servicerequestform({required this.description});

  @override
  State<servicerequestform> createState() => _servicerequestformState();
}
class _servicerequestformState extends State<servicerequestform> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController itemController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController minpriceController = TextEditingController();
  TextEditingController maxpriceController = TextEditingController();
  TextEditingController technicianController = TextEditingController();


   void _record() {
    // Access the user inputs using the controllers
    String name = _nameController.text;
    String phone = phoneController.text;
    String email = emailController.text;
    String address = addressController.text;
    String city = cityController.text;
    String state = stateController.text;
    String item = itemController.text;
    String description = descriptionController.text;
    String min = minpriceController.text;
    String max = maxpriceController.text;

    // Get values for other text fields

     FirebaseFirestore.instance.collection('issues').add({
      'username': name,
      'Phone' : phone,
      'Email' : email,
      'Address' : address,
      'City' : city,
      'State' : state,
      'Item ': item,
      'Description ': description,
      'Min ': min,
      'Max ': max,
      // Add other fields here based on your form
    }).then((value) {
      // Data added successfully
      print('Data added to Firebase');
    }).catchError((error) {
      // Handle errors
      print('Failed to add data to Firebase: $error');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height*0.1,
        title: Text(
          widget.description,
            style: TextStyle(
              color: Colors.black
            ),
            
          ),
          centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 213, 139, 1),
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,

      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.01, 1.2], // Three stops for three colors
            colors: [
              Colors.white,
              Color.fromRGBO(255, 168, 0, 0),
            ],
          ),
          
        
       ),
       child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.02,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                Text(
                'Service Request Form',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
                ]
              ),
              
            ),
            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Full Name'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'name', sufix: Icons.warning, width: 1, height: 0.1,controller: _nameController),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Phone Number'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'number', sufix: Icons.warning, width: 1, height: 0.1,controller: phoneController),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Email Address'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'email', sufix: Icons.warning, width: 1, height: 0.1,controller: emailController),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Address'),
            columnSpace(ratio: 0.02),
            QuestionField(fieldtitle: 'Address', sufix: Icons.warning, width: 1, height: 0.1,controller: addressController),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'City'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'City', sufix: Icons.warning, width: 1, height: 0.1,controller: cityController),
            
            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'State'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'State', sufix: Icons.warning, width: 1, height: 0.1,controller: stateController),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Date of Service'),
            columnSpace(ratio: 0.03),
            dateButton(icon: Icons.calendar_month),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Time of Service'),
            columnSpace(ratio: 0.03),
            TimeButton(icon: Icons.lock_clock),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Repair Item'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'item', sufix: Icons.warning, width: 1, height: 0.1,controller: itemController),
            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Description'),
            columnSpace(ratio: 0.03),
            QuestionField(fieldtitle: 'Description', sufix: Icons.warning, width: 1, height: 0.1,controller: descriptionController),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Photos/Videos'),
            columnSpace(ratio: 0.03),
            FileUploadWidget(),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Price Range'),
            columnSpace(ratio: 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                leftPadding(ratio: 0.07),
                Text(
                  'RM',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,                   
                  ),
                ),
                priceTextField(minOrmax: 'Min',),
                Text(
                  '-',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                priceTextField(minOrmax: 'Max',),
              ],
            ),
            columnSpace(ratio: 0.03),
            popUpPriceRange(),

            spaceBetwwenQues(),
            QuestionTitle(QTitle: 'Choose Technicians'),
            columnSpace(ratio: 0.03),
            chooseTechniciansButton(),

            spaceBetwwenQues(),
            spaceBetwwenQues(),
            proceedButton(),

            spaceBetwwenQues()


          ],
        ),
        ),
        
      ),
      
    );
      
   
  }
}
