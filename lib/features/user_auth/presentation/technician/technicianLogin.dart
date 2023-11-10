// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_firebase/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'technicianSignUp.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class TechnicianLoginPage extends StatefulWidget {
//   const TechnicianLoginPage({Key? key}) : super(key: key);

//   @override
//   _TechnicianLoginPageState createState() => _TechnicianLoginPageState();
// }

// class CustomFormContainerWidget extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final bool isPasswordField;
//   final IconData prefixIcon; // Add a prefixIcon parameter

//   CustomFormContainerWidget({
//     required this.controller,
//     required this.hintText,
//     required this.isPasswordField,
//     required this.prefixIcon, // Add prefixIcon parameter
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 5),
//       child: TextFormField(
//         controller: controller,
//         obscureText: isPasswordField,
//         decoration: InputDecoration(
//           hintText: hintText,
//           prefixIcon: Icon(
//             prefixIcon,
//             color: Color(0xFF7B8794), // Set icon color to #7B8794
//           ),
//           labelText: hintText,
//           labelStyle: GoogleFonts.poppins(
//               color: Color(0xFF7B8794)), // Set hint text color to #7B8794
//           filled: true,
//           fillColor: Colors.white, // Set container color to white
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _TechnicianLoginPageState extends State<TechnicianLoginPage> {
//   bool _isSigning = false;
//   final FirebaseAuthService _auth = FirebaseAuthService();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   automaticallyImplyLeading: false,
//       //   title: Text("Login"),
//       // ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color.fromRGBO(73, 148, 142, 100), // Top color #49948E
//               Color.fromRGBO(71, 146, 141, 25), // Bottom color #47928D
//             ],
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/icon.png', // Replace with the path to your logo image
//                   width: 200, // Adjust the width as needed
//                 ),
//                 SizedBox(height: 40),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "  TECHNICIAN ID",
//                     style: GoogleFonts.poppins(
//                       color: Colors.black, // Set the text color to black
//                     ),
//                   ),
//                 ),
//                 CustomFormContainerWidget(
//                   controller: _emailController,
//                   hintText: "name@gmail.com",
//                   isPasswordField: false,
//                   prefixIcon: Icons.email, // Provide the email icon
//                 ),
//                 SizedBox(height: 10),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "  PASSWORD",
//                     style: GoogleFonts.poppins(
//                       color: Colors.black, // Set the text color to black
//                     ),
//                   ),
//                 ),
//                 CustomFormContainerWidget(
//                   controller: _passwordController,
//                   hintText: "********",
//                   isPasswordField: true,
//                   prefixIcon: Icons.lock, // Provide the password icon
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: GestureDetector(
//                     onTap: () {
//                       // Implement your "Forgot Password" functionality here
//                     },
//                     child: Text(
//                       "Forgot Password?  ",
//                       style: GoogleFonts.poppins(
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 GestureDetector(
//                   onTap: () {
//                     _signIn();
//                   },
//                   child: Container(
//                     width: double.infinity,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Center(
//                       child: _isSigning
//                           ? CircularProgressIndicator(color: Colors.white)
//                           : Text(
//                               "LOGIN",
//                               style: GoogleFonts.poppins(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Not a Technician?"),
//                     SizedBox(width: 5),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => TechnicianSignupPage()),
//                         );
//                       },
//                       child: Text(
//                         "Register",
//                         style: GoogleFonts.poppins(
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _signIn() async {
//     setState(() {
//       _isSigning = true;
//     });

//     String email = _emailController.text;
//     String password = _passwordController.text;

//     User? user = await _auth.signInWithEmailAndPassword(email, password);

//     setState(() {
//       _isSigning = false;
//     });

//     void showToast({required String message}) {
//       Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.black,
//         textColor: Colors.white,
//         fontSize: 16.0,
//       );

//       if (user != null) {
//         showToast(message: "Technician is successfully signed in");
//         // Navigator.pushReplacement(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => UserSettingsPage(),
//         //   ),
//         // );
//         Navigator.pushNamed(context, "/TechnicianEnterApp");
//       } else {
//         showToast(message: "some error occured");
//       }
//     }
//   }
// }
