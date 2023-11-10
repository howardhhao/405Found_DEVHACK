import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/signup2.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/technicianEnterApp.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/technician_signup.dart';
import 'package:flutter_firebase/features/user_auth/presentation/technician/technicianSetUp.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';
import 'package:flutter_firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter_firebase/global/common/toast.dart';
import '../../firebase_auth_implementation/firebase_auth_services.dart';
import 'user_settings.dart';
import '../technician/customerRequestPage.dart';
import '../technician/myServicePage.dart';
import '../technician/technicianHomePage.dart';
import '../technician/technicianPerformance.dart';
import '../technician/technicianProfilePage.dart';

class TechnicianLoginPage extends StatefulWidget {
  const TechnicianLoginPage({Key? key}) : super(key: key);

  @override
  _TechnicianLoginPageState createState() => _TechnicianLoginPageState();
}

class CustomFormContainerWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPasswordField;
  final IconData prefixIcon; // Add a prefixIcon parameter

  CustomFormContainerWidget({
    required this.controller,
    required this.hintText,
    required this.isPasswordField,
    required this.prefixIcon, // Add prefixIcon parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        obscureText: isPasswordField,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            prefixIcon,
            color: Color(0xFF7B8794), // Set icon color to #7B8794
          ),
          labelText: hintText,
          labelStyle: TextStyle(color: Color(0xFF7B8794)), // Set hint text color to #7B8794
          filled: true,
          fillColor: Colors.white, // Set container color to white
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class _TechnicianLoginPageState extends State<TechnicianLoginPage> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text("Login"),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color.fromRGBO(73, 148, 142, 100), // Top color #49948E
            Color.fromRGBO(71, 146, 141, 25), // Bottom color #47928D
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image.asset(
                  'assets/image/icon.png', // Replace with the path to your logo image
                  width: 200, // Adjust the width as needed
                ),
                SizedBox(height: 14),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  TECHNICIAN ID",
                    style: TextStyle(
                      color: Colors.black, // Set the text color to black
                    ),
                  ),
                ),
                CustomFormContainerWidget(
                  controller: _emailController,
                  hintText: "name@gmail.com",
                  isPasswordField: false,
                  prefixIcon: Icons.email, // Provide the email icon
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  PASSWORD",
                    style: TextStyle(
                      color: Colors.black, // Set the text color to black
                    ),
                  ),
                ),
                CustomFormContainerWidget(
                  controller: _passwordController,
                  hintText: "********",
                  isPasswordField: true,
                  prefixIcon: Icons.lock, // Provide the password icon
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Implement your "Forgot Password" functionality here
                    },
                    child: Text(
                      "Forgot Password?  ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    _signIn();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: _isSigning
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a Technician? "),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TechnicianSignupPage()),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      showToast(message: "User is successfully signed in");
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => UserSettingsPage(),
      //   ),
      // );
      Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new TechEnterApp(),
      ),
    );
    } else {
      showToast(message: "some error occured");
    }
  }
}

