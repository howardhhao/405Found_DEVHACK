import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? currentUser;

  String username = '';
  String email = '';
  String phoneNumber = '';
  String address = '';

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    currentUser = _auth.currentUser;

    if (currentUser != null) {
      // Fetch user data from Firestore based on the user's UID
      DocumentSnapshot userData =
          await _firestore.collection('users').doc(currentUser!.uid).get();

      if (userData.exists) {
        setState(() {
          username = userData['username'];
          email = userData['email'];
          phoneNumber = userData['phone'];
          address = userData['address'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: Text('Username'),
              subtitle: Text(username),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text(email),
            ),
            ListTile(
              title: Text('Phone Number'),
              subtitle: Text(phoneNumber),
            ),
            ListTile(
              title: Text('Address'),
              subtitle: Text(address),
            ),
          ],
        ),
      ),
    );
  }
}
