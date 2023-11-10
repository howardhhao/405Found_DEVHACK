
import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/userReportPage/chooseTechnicians.dart';
import 'servicerequestform.dart';
import 'package:flutter/services.dart';
import '../user/widgetList.dart';


class filterPage extends StatefulWidget {
  const filterPage({super.key});

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.07),
              Text(
            'Price Range (RM)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
            ],
          ),
          columnSpace(ratio: 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // leftPadding(),
              priceRangeTextField(maxOrmin: 'MIN'),
              Text(
                '  -  '
              ),
              priceRangeTextField(maxOrmin: 'MAX')
            ],
          ),
          columnSpace(ratio: 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.07),
              Text(
            'Rating',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
            ],
          ),
          columnSpace(ratio: 0.03),
          RatingChoice(),
          columnSpace(ratio: 0.06),
          ApplyButton()



        ],
      ),
    );
  }
}

class ApplyButton extends StatefulWidget {
  const ApplyButton({super.key});

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(51, 51, 51, 1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leftPadding(ratio: 0.14),
          TextButton(
            onPressed: null, 
            child: Text(
              'Apply',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
            leftPadding(ratio: 0.14),
        ],
      ),
    );
  }
}



class priceRangeTextField extends StatefulWidget {
  String maxOrmin;

  priceRangeTextField ({required this.maxOrmin});

  @override
  State<priceRangeTextField> createState() => _priceRangeTextFieldState();
}
class _priceRangeTextFieldState extends State<priceRangeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
      width: MediaQuery.sizeOf(context).width*0.2,
      height: MediaQuery.sizeOf(context).height*0.08,
      decoration: BoxDecoration(
        
        color: Color.fromRGBO(234, 234, 234, 1),
        borderRadius: BorderRadius.circular(20)
      ),
      
        child: TextField(
          keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
          decoration: InputDecoration(
                fillColor: Colors.white,
                labelText: widget.maxOrmin, 
                               
                
              ),
        )
      
      );
    
    
  }
}

class RatingChoice extends StatefulWidget {
  const RatingChoice({super.key});

  @override
  State<RatingChoice> createState() => _RatingChoiceState();
}

class _RatingChoiceState extends State<RatingChoice> {
  List<String> numOfStars = [
    '5 Stars',
    '4 Stars & UP',
    '3 Stars & UP',
    '2 Stars & UP',
    '1 Star & UP',
  ];

  int selectedButtonIndex = -1;

  void onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Ratings(numOfStars: numOfStars[0], isSelected: selectedButtonIndex == 0, onButtonPressed:()=> onButtonPressed(0)),
              leftPadding(ratio: 0.05),
              Ratings(numOfStars: numOfStars[1], isSelected: selectedButtonIndex == 1, onButtonPressed:()=> onButtonPressed(1))

            ],
          ),
          columnSpace(ratio: 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Ratings(numOfStars: numOfStars[2], isSelected: selectedButtonIndex == 2, onButtonPressed:()=> onButtonPressed(2)),
              leftPadding(ratio: 0.05),
              Ratings(numOfStars: numOfStars[3], isSelected: selectedButtonIndex == 3, onButtonPressed:()=> onButtonPressed(3))
            ],
          ),
          columnSpace(ratio: 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leftPadding(ratio: 0.14),
              Ratings(numOfStars: numOfStars[4], isSelected: selectedButtonIndex == 4, onButtonPressed:()=> onButtonPressed(4)),
              leftPadding(ratio: 0.14),
            ],
          ),
        ],
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  final String numOfStars;
  final bool isSelected;
  final VoidCallback onButtonPressed;

  Ratings({
    required this.numOfStars,
    required this.isSelected,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
      decoration: BoxDecoration(
        color: isSelected ? Color.fromRGBO(198, 124, 78, 1) : Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextButton(
        onPressed: onButtonPressed,
        child: Text(
          numOfStars,
          style: TextStyle(
            color: isSelected ? Color.fromRGBO(255, 255, 255, 1) : Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      ),
      
    );
  }
}
