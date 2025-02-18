import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Splash_Screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   if(kIsWeb)
{
  await Firebase.initializeApp(
  options: const FirebaseOptions
( apiKey: "AIzaSyBuEcP5tXbM8DKj1Pa2Oogs0L5h6YgCxdE",
  authDomain: "fire-setup-ea7e2.firebaseapp.com",
  projectId: "fire-setup-ea7e2",
  storageBucket: "fire-setup-ea7e2.firebasestorage.app",
  messagingSenderId: "527049706629",
  appId: "1:527049706629:web:216073fd9480193b562dec"))
  runApp(const MyApp());

}
{
 await Firebase.initializeApp();
}
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
      title: 'Flutter Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    //   initialRoute: "/",
    //   routes: {
    //  '/': (context) =>  SplashScreen(), // Home route
    //   },
     home: SplashScreen(), // Set MyLogin as the initial screen//splashscreen kdr code ma kdr ha
  
    );
  }
}