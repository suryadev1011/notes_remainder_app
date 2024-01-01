import 'package:Remainder/Screens/note_editor.dart';
import 'package:Remainder/Screens/notes_reader.dart';
import 'package:Remainder/Widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Color.fromARGB(255, 255, 204, 136),appBar: AppBar(elevation: 6,title:Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [Icon(Icons.note_alt),Text("Notes")],),centerTitle: true,backgroundColor: Colors.orange,),body: Column(children: [
    Expanded(
      child: StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection("Notes").snapshots(),builder: (context,AsyncSnapshot <QuerySnapshot> snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return  Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasData){
          return GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),children: snapshot.data!.docs.map((note) => noteCard((){Navigator.push(context, MaterialPageRoute(builder: (context)=>NotesReadScreen(note)));}, note)).toList(),);
        }
             return  Text('there is no notes');
      }),
    )],),bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.orange,selectedItemColor: Colors.white,items: [BottomNavigationBarItem(icon: Icon(Icons.note_add_sharp,color: Colors.black,),label: 'Notes'),BottomNavigationBarItem(icon: Icon(Icons.alarm),label: 'Reminder')]),
    floatingActionButton: FloatingActionButton.extended(focusColor: Colors.red,
    splashColor:Colors.red.shade300 ,
    backgroundColor: Colors.orange,
    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> NotesEditorScreen()));}, label: Text("Add Notes"),icon: Icon(Icons.add),),);
  }
}