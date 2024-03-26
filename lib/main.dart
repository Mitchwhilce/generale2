import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3oHpdMPkzIrYBcT6zPSIjfcADFA4u0n8",
            authDomain: "mitch-65b69.firebaseapp.com",
            projectId: "mitch-65b69",
            storageBucket: "mitch-65b69.appspot.com",
            messagingSenderId: "557463822807",
            appId: "1:557463822807:web:e7c0df2cb9c1d4b2ec6b92",
            measurementId: "G-DFEVZX2WM1"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginForm(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
