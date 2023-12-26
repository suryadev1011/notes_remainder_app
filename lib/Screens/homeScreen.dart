import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Color.fromARGB(255, 255, 204, 136),bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.orange,selectedItemColor: Colors.white,items: [BottomNavigationBarItem(icon: Icon(Icons.note_add_sharp,color: Colors.black,),label: 'Notes'),BottomNavigationBarItem(icon: Icon(Icons.alarm),label: 'Reminder')]));
  }
}