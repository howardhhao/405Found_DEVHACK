import 'filterPage.dart';
import 'showPriceWindow.dart';
import 'package:flutter/material.dart';
import 'servicerequestform.dart';
import '../user/widgetList.dart';

class chooseTechWindow extends StatefulWidget {
  const chooseTechWindow({super.key});

  @override
  State<chooseTechWindow> createState() => _chooseTechWindowState();
}

class _chooseTechWindowState extends State<chooseTechWindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(245,245, 245, 1),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [

                leftPadding(ratio: 0.05),
                filterTextField(),
                
                filterButton(),
                leftPadding(ratio: 0.05),
              ],
          ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.1,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height*0.5,
            decoration: BoxDecoration(
                  color: Color.fromRGBO(0,0,0, 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245,245,245, 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    TechniciansPriceRangeAndRating(name: 'Chacha', rating: 5, max: '80', min: '70'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'howard', rating: 4.5, max: '85', min: '65'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'joyee', rating: 4, max: '95', min: '70'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'ney', rating: 5, max: '70', min: '60'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'ali', rating: 3, max: '75', min: '50'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'abu', rating: 4, max: '78', min: '64'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'atan', rating: 3.5, max: '65', min: '55'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'apek', rating: 5, max: '68', min: '45'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class filterTextField extends StatefulWidget {
  const filterTextField({super.key});

  @override
  State<filterTextField> createState() => _filterTextFieldState();
}
class _filterTextFieldState extends State<filterTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.sizeOf(context).width*0.4,
      child: TextField(
        decoration: InputDecoration(
                labelText: 'Search Name',                
                
              ),
              
            ),
      
    );
  }
}

class filterButton extends StatefulWidget {
  const filterButton({super.key});

  @override
  State<filterButton> createState() => _filterButtonState();
}
class _filterButtonState extends State<filterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.1,
      child: TextButton(
        onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Filter'),
                      content: filterPage(), // Use the defined content widget
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
                
        child: Icon(
          Icons.filter_list_alt,
        ),
      ),
    );
  }
}

