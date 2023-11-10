import '../userReportPage/filterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class bookingDetails extends StatefulWidget {
  String name;
  String phone;
  String Addess;
  String date;
  String time;
  String Service;
  Image image;
  String Technicians;
  double Price;

  bookingDetails ({
    required this.name,
    required this.phone,
    required this.Addess,
    required this.date,
    required this.time,
    required this.Service,
    required this.image,
    required this.Technicians,
    required this.Price,
  });
  @override
  State<bookingDetails> createState() => _bookingDetailsState();
}

class _bookingDetailsState extends State<bookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
        BoxDecoration(
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
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ), //BoxS 
              ]
        ),                
      child: Row(
        
        children: [
          Container(
            
            width: MediaQuery.sizeOf(context).width*0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              details(title: 'NAME'),
              details(title: 'PHONE'),
              details(title: 'ADDRESS'),
              details(title: 'DATE'),
              details(title: 'TIME'),
              details(title: 'SERVICE'),
              details(title: 'PHOTO'),
              details(title: 'TECHNICIANS'),
              details(title: 'PRICE'),
            ],
          ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width*0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              input(inputs: widget.name),
              input(inputs: widget.phone),
              input(inputs: widget.Addess),
              input(inputs: widget.date),
              input(inputs: widget.time),
              input(inputs: widget.Service),
              input(inputs: widget.Technicians),
              input(inputs: widget.Price.toString()),
            ],
          ),
          )
        ],
      ),
    );
  }
}

class input extends StatefulWidget {
  String inputs;
   


  input ({
      
      required this.inputs,
    });
  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.inputs,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18

      ),
    );
  }
}

class details extends StatefulWidget {
  String title;

  details ({required this.title});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.title + ' : ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black
                ),
              ),
          // columnSpace(ratio: 0.01),
          
        ],
      )
    );
  }
}