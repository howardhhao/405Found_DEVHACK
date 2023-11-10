// // ignore_for_file: unused_local_variable, unused_element, use_build_context_synchronously

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_firebase/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
// import 'package:flutter_firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'technicianLogin.dart';

// class TechnicianSignupPage extends StatefulWidget {
//   const TechnicianSignupPage({Key? key}) : super(key: key);

//   @override
//   _TechnicianSignupPageState createState() => _TechnicianSignupPageState();
// }

// class _TechnicianSignupPageState extends State<TechnicianSignupPage> {
//   final FirebaseAuthService _auth = FirebaseAuthService();
//   final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;
//   TextEditingController _usernameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();
//   TextEditingController _addressController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   TextEditingController _confirmPasswordController = TextEditingController();
//   bool _isSigningUp = false;

//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _emailController.dispose();
//     _phoneController.dispose();
//     _addressController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color.fromRGBO(73, 148, 142, 100), // Top color #49948E
//                 Color.fromRGBO(71, 146, 141, 25), // Bottom color #47928D
//               ],
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "JOIN US",
//                   // ignore: prefer_const_constructors
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ).merge(GoogleFonts.poppins()),
//                 ),
//                 const SizedBox(height: 30),
//                 FormContainerWidget(
//                   controller: _usernameController,
//                   hintText: "Username",
//                   isPasswordField: false,
//                 ),
//                 const SizedBox(height: 10),
//                 FormContainerWidget(
//                   controller: _emailController,
//                   hintText: "Email",
//                   isPasswordField: false,
//                 ),
//                 const SizedBox(height: 10),
//                 FormContainerWidget(
//                   controller: _phoneController,
//                   hintText: "Phone Number",
//                   isPasswordField: false,
//                 ),
//                 const SizedBox(height: 10),
//                 FormContainerWidget(
//                   controller: _addressController,
//                   hintText: "Address",
//                   isPasswordField: false,
//                 ),
//                 const SizedBox(height: 10),
//                 FormContainerWidget(
//                   controller: _passwordController,
//                   hintText: "Password",
//                   isPasswordField: true,
//                 ),
//                 const SizedBox(height: 10),
//                 FormContainerWidget(
//                   controller: _confirmPasswordController,
//                   hintText: "Confirm Password",
//                   isPasswordField: true,
//                 ),
//                 const SizedBox(height: 30),
//                 GestureDetector(
//                   onTap: () {
//                     _signUp();
//                   },
//                   child: Container(
//                     width: double.infinity,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Center(
//                       child: _isSigningUp
//                           ? const CircularProgressIndicator(color: Colors.white)
//                           : Text(
//                               "SIGN UP",
//                               style: GoogleFonts.poppins(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Already member?"),
//                     const SizedBox(width: 5),
//                     GestureDetector(
//                       onTap: () {
//                         // Navigate to the login page
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   const TechnicianLoginPage()),
//                         );
//                       },
//                       child: Text(
//                         "Sign In",
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

//   void _signUp() async {
//     setState(() {
//       _isSigningUp = true;
//     });

    
//     String username = _usernameController.text;
//     String email = _emailController.text;
//     String phone = _phoneController.text;
//     String address = _addressController.text;
//     String password = _passwordController.text;
//     String confirmPassword = _confirmPasswordController.text;

//  Future<void> showToast({required String message}) async {
//       Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.black,
//         textColor: Colors.white,
//         fontSize: 18.0,
//       );

//     if (password != confirmPassword) {
//       showToast(message: "Passwords do not match");
//       setState(() {
//         _isSigningUp = false;
//       });
//       return;
//     }

//     User? technician = await _auth.signUpWithEmailAndPassword(email, password);

//     setState(() {
//       _isSigningUp = false;
//     });

//       if (technician != null) {
//         try {
//           await firestoreInstance.collection('technicians').add({
//             'username': _usernameController.text,
//             'email': _emailController.text,
//             'phone': _phoneController.text,
//             'address': _addressController.text,
//           });

//           showToast(message: "User is successfully created");
//           Navigator.pushNamed(context, "/userEnterApp");
//         } catch (e) {
//           print("Error: $e");
//           showToast(message: "Failed to save user data in Firestore");
//         }
//       } else {
//         showToast(message: "Some error happened");
//       }
//     }
//   }
// }
