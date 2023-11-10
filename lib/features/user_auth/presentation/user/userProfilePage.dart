import 'package:flutter/material.dart';

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
        decoration:  BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromRGBO(255,167,0,100), Colors.white], // Change to your desired colors
          ),
        ),
        
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              Text(
                'Profile',
                style: TextStyle(
                fontSize: 24,
                color: Colors.black, // Text color
                fontWeight: FontWeight.bold
                // fontFamily: 'Poppins'
                ),
              ),
              Row(
                children: [
                  ProfileIcon(imagePath: 'assets/image/icon.png'),
                  const Column(
                    children: [
                      Text(
                        'Chew Jia Hui', // need get name from database
                        style: TextStyle(
                        fontSize: 18,
                        color: Colors.black, // Text color
                        ),
                      ),
                      Text(
                        'chewjh@gmail.com', // need get name from database
                        style: TextStyle(
                        fontSize: 18,
                        color: Colors.black, // Text color
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),

              const Column(
                
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
                              style: TextStyle(
                                fontSize: 18,
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
                              style: TextStyle(
                                fontSize: 18,
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
                              'Address',
                              style: TextStyle(
                                fontSize: 18,
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
                              'Cards',
                              style: TextStyle(
                                fontSize: 18,
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
                              'Contact Us ',
                              style: TextStyle(
                                fontSize: 18,
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
                              style: TextStyle(
                                fontSize: 18,
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
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
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
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}

