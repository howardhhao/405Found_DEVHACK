//
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase/features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter_firebase/global/common/toast.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({super.key});

  @override
  State<SignUpPage2> createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // userregisterpagevdX (10:49)
        padding: EdgeInsets.fromLTRB(21 * fem, 12 * fem, 16 * fem, 37 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0x72ffa700), Color(0x72ffb21e)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // statusbar02transparentm8M (216:11625)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 47 * fem),
              padding: EdgeInsets.fromLTRB(11 * fem, 2 * fem, 0 * fem, 1 * fem),
              width: double.infinity,
              height: 21 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // statusbartime01defaultEXj (216:11626)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 247 * fem, 0 * fem),
                    width: 32 * fem,
                    height: double.infinity,
                    child: Center(
                      child: Text(
                        '09:41',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          letterSpacing: -0.2399999946*fem,
                          color: Color(0xff111828),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // mobilesignal4mf (216:11635)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 1 * fem),
                    width: 17 * fem,
                    height: 11 * fem,
                    child: Image.asset(
                      'assets/page-1/images/mobile-signal-ujw.png',
                      width: 17 * fem,
                      height: 11 * fem,
                    ),
                  ),
                  Container(
                    // wifiyNq (216:11631)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 1 * fem),
                    width: 15 * fem,
                    height: 11 * fem,
                    child: Image.asset(
                      'assets/page-1/images/wifi-YCZ.png',
                      width: 15 * fem,
                      height: 11 * fem,
                    ),
                  ),
                  Container(
                    // batterygHF (216:11627)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                    width: 24 * fem,
                    height: 11 * fem,
                    child: Image.asset(
                      'assets/page-1/images/battery-xc9.png',
                      width: 24 * fem,
                      height: 11 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // registerPBf (10:51)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 162 * fem, 36 * fem),
              child: Text(
                'REGISTER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  // 'Poppins',
                  fontSize: 40 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // group10uA1 (22:5255)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 9 * fem, 43 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // inputfieldtextinactivetobefill (22:5228)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 39 * fem),
                    padding: EdgeInsets.fromLTRB(
                        12 * fem, 8 * fem, 12 * fem, 10 * fem),
                    width: double.infinity,
                    height: 48 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Container(
                      // autogroupj8grHgM (LCe2BMYSdVuzRPTitdJ8GR)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 149 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 170 * fem,
                      height: double.infinity,
                      child: Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff918f8f),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // inputfieldtextinactivetobefill (22:5236)
                    padding: EdgeInsets.fromLTRB(
                        12 * fem, 10 * fem, 12 * fem, 8 * fem),
                    width: double.infinity,
                    height: 48 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Container(
                      // autogroupkba1qrH (LCe2QBWQLAf7ny2y4RKbA1)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 149 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 170 * fem,
                      height: double.infinity,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff918f8f),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // inputfieldtextinactivetobefill (22:5239)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 9 * fem, 38 * fem),
              padding:
                  EdgeInsets.fromLTRB(12 * fem, 9 * fem, 12 * fem, 9 * fem),
              width: double.infinity,
              height: 48 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              child: Container(
                // autogrouprgx3nQ9 (LCe2bbM4D2we5XYAXxrGX3)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 149 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                width: 170 * fem,
                height: double.infinity,
                child: Text(
                  'Phone number',
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff918f8f),
                  ),
                ),
              ),
            ),
            Container(
              // inputfieldtextinactivetobefill (22:5242)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 9 * fem, 38 * fem),
              padding:
                  EdgeInsets.fromLTRB(12 * fem, 10 * fem, 12 * fem, 8 * fem),
              width: double.infinity,
              height: 48 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              child: Container(
                // autogroupukkdix1 (LCe2qAnmTqDunpcr1euKkD)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 149 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 0 * fem),
                width: 170 * fem,
                height: double.infinity,
                child: Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff918f8f),
                  ),
                ),
              ),
            ),
            Container(
              // inputfieldtextinactivetobefill (22:5245)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 9 * fem, 43 * fem),
              padding:
                  EdgeInsets.fromLTRB(12 * fem, 8 * fem, 12 * fem, 10 * fem),
              width: double.infinity,
              height: 48 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              child: Container(
                // autogroupkofp5g5 (LCe32L8qVKfPJ9HZiZkofP)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 149 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                width: 170 * fem,
                height: double.infinity,
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff918f8f),
                  ),
                ),
              ),
            ),
            Container(
              // inputfieldtextinactivetobefill (22:5248)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 9 * fem, 39 * fem),
              padding:
                  EdgeInsets.fromLTRB(12 * fem, 8 * fem, 12 * fem, 10 * fem),
              width: double.infinity,
              height: 48 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8 * fem),
              ),
              child: Container(
                // autogrouph4bkS9F (LCe3FjvABCiHpcUbMAh4bK)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 129 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 190 * fem,
                height: double.infinity,
                child: Text(
                  'Confirm password',
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff918f8f),
                  ),
                ),
              ),
            ),
            Container(
              // buttonlargeprimary6Uh (22:5252)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 11 * fem, 33 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 335 * fem,
                  height: 52 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff323f4b)),
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.circular(50 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1 * ffem / fem,
                        letterSpacing: 1.25 * fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // alreadyhaveanaccountsignin7ub (10:58)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 17 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff918f8f),
                  ),
                  children: [
                    TextSpan(
                      text: 'Already have an account? ',
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xff918f8f),
                        decorationColor: Color(0xff918f8f),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    setState(() {
      isSigningUp = true;
    });

    String username = usernameController.text;
    String email = emailController.text;
    String phone = phoneController.text;
    String address = addressController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (password != confirmPassword) {
      showToast(message: "Passwords do not match");
      setState(() {
        isSigningUp = false;
      });
      return;
    }

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });

    if (user != null) {
      try {
        await firestoreInstance.collection('users').add({
          'username': usernameController.text,
          'email': emailController.text,
          'phone': phoneController.text,
          'address': addressController.text,
        });

        showToast(message: "User is successfully created");
        Navigator.pushNamed(context, "/userEnterApp");
      } catch (e) {
        print("Error: $e");
        showToast(message: "Failed to save user data in Firestore");
      }
    } else {
      showToast(message: "Some error happened");
    }
  }
}
