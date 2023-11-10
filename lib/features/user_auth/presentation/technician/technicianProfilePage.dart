import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: userProfilePage(),
    );
  }
}


class userProfilePage extends StatefulWidget {
  const userProfilePage({super.key});

  @override
  State<userProfilePage> createState() => _userProfilePageState();
}
//Color.fromRGBO(255,167,0,100), Colors.white
class _userProfilePageState extends State<userProfilePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set the gradient background color here
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromRGBO(41, 132, 115, 0.612), Colors.white], // Change to your desired colors
          ),
        ),
        
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              Row(
                children: [
                  ProfileIcon(imagePath: 'assets/images/icon.png'),
                   Column(
                    children: [
                      Text(
                        'Chew Jia Hui', // need get name from database
                        style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black, // Text color
                        ),
                      ),
                      Text(
                        'chewjh@gmail.com', // need get name from database
                        style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white, // Text color
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),

               Column(
                
                children: <Widget>[
                  // my profile button
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: TextButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Profile',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  // change password button
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: TextButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Change Password',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: TextButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Service Type',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: TextButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Contact Us',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: TextButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rate This App',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // LOGOUT BUTTON
                    TextButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'LOGOUT',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileIcon extends StatelessWidget {

   final String imagePath;

  ProfileIcon({required this.imagePath});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showImageDialog(context);
          },
          child: Image.asset(
            imagePath, // Replace with the path to your image
            height: 100.0, // Adjust the size as needed
          ),
        ),
      ],
    );
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            children: [
              Image.asset(
                imagePath, // Same image path
                height: MediaQuery.sizeOf(context).width*0.5,
                width: MediaQuery.sizeOf(context).width*0.5, 
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}