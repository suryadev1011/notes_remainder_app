import 'package:Remainder/Widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Color.fromARGB(255, 255, 204, 136),body: Column(children: [Text('Your Recent Notes'),
    Expanded(
      child: StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection("Notes").snapshots(),builder: (context,AsyncSnapshot <QuerySnapshot> snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
        if(snapshot.hasData){
          return GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),children: snapshot.data!.docs.map((note) => noteCard((){}, note)).toList(),);
        }
             return Text('there is no notes');
      }),
    )],),bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.orange,selectedItemColor: Colors.white,items: [BottomNavigationBarItem(icon: Icon(Icons.note_add_sharp,color: Colors.black,),label: 'Notes'),BottomNavigationBarItem(icon: Icon(Icons.alarm),label: 'Reminder')]));
  }
}