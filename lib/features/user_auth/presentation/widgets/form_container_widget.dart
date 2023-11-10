import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormContainerWidget(
      {this.controller,
      this.isPasswordField,
      this.fieldKey,
      this.hintText,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.inputType});

  @override
  _FormContainerWidgetState createState() => new _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Rounded corners
        // border: Border.all(color: Colors.grey), // Grey border line
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        controller: widget.controller,
        keyboardType: widget.inputType,
        key: widget.fieldKey,
        obscureText: widget.isPasswordField == true ? _obscureText : false,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded border
            borderSide: BorderSide(color: Colors.grey), // Border color
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.black45),
          suffixIcon: new GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: widget.isPasswordField == true
                ? Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: _obscureText == false ? Colors.blue : Colors.grey,
                  )
                : Text(""),
          ),
        ),
      ),
    );
  }
}


// class FormContainerWidget extends StatefulWidget {
//   final TextEditingController? controller;
//   final Key? fieldKey;
//   final bool? isPasswordField;
//   final String? hintText;
//   final String? labelText;
//   final String? helperText;
//   final FormFieldSetter<String>? onSaved;
//   final FormFieldValidator<String>? validator;
//   final ValueChanged<String>? onFieldSubmitted;
//   final TextInputType? inputType;
//   final double width; // Set default width
//   final double height; // Set default height

//   const FormContainerWidget({
//     this.controller,
//     this.isPasswordField,
//     this.fieldKey,
//     this.hintText,
//     this.labelText,
//     this.helperText,
//     this.onSaved,
//     this.validator,
//     this.onFieldSubmitted,
//     this.inputType,
//     this.width = 200.0,
//     this.height = 50.0,
//   });

//   @override
//   _FormContainerWidgetState createState() => _FormContainerWidgetState();
// }

// class _FormContainerWidgetState extends State<FormContainerWidget> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.width,
//       height: widget.height,
//       padding:
//           EdgeInsets.symmetric(horizontal: 10), // Adjust the padding as needed
//       decoration: BoxDecoration(
//         color: Colors.white, // Background color for the input container
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         style: TextStyle(color: Colors.black),
//         controller: widget.controller,
//         keyboardType: widget.inputType,
//         key: widget.fieldKey,
//         obscureText: widget.isPasswordField == true ? _obscureText : false,
//         onSaved: widget.onSaved,
//         validator: widget.validator,
//         onFieldSubmitted: widget.onFieldSubmitted,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: widget.hintText,
//           hintStyle: TextStyle(color: Colors.black45),
//           suffixIcon: GestureDetector(
//             onTap: () {
//               setState(() {
//                 _obscureText = !_obscureText;
//               });
//             },
//             child: widget.isPasswordField == true
//                 ? Icon(
//                     _obscureText ? Icons.visibility_off : Icons.visibility,
//                     color: _obscureText == false ? Colors.blue : Colors.grey,
//                   )
//                 : Text(""),
//           ),
//         ),
//       ),
//     );
//   }
// }
