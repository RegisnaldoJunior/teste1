import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teste1/Pages/loginPage.dart';
import 'package:teste1/firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
  );
}
