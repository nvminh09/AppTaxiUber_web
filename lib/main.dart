import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dashboard/side_navigation_drawer.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyA5yGcxjLsjSpF4CkBkT6KD2hQUZFyogUM",
        authDomain: "active-pillar-421416.firebaseapp.com",
        databaseURL: "https://active-pillar-421416-default-rtdb.firebaseio.com",
        projectId: "active-pillar-421416",
        storageBucket: "active-pillar-421416.appspot.com",
        messagingSenderId: "580756939736",
        appId: "1:580756939736:web:ed5128a409fc5d608b88ad",
        measurementId: "G-RGZZWVLZ3D"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SideNavigationDrawer(),
    );
  }
}


