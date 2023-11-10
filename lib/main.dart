import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:flutter_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/signup2.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/user_settings.dart';
import 'features/user_auth/presentation/user/userEnterApp.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCsi11aC_VKEu5vf5TFN4-C1F01olR5qEE",
        appId: "1:884915389788:android:94a2cd575cd8ef94c4ad99",
        messagingSenderId: "884915389788",
        projectId: "app1-164f7",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/userEnterApp': (context) => userEnterApp(),
        '/ProfilePage': (context) => UserProfilePage(),
      },
    );
  }
}
