import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotesReadScreen extends StatefulWidget {
   NotesReadScreen(this.doc,{super.key});

  QueryDocumentSnapshot doc;

  

  @override
  State<NotesReadScreen> createState() => _NotesReadScreenState();
}

class _NotesReadScreenState extends State<NotesReadScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold (backgroundColor:  Colors.red.shade300,
    appBar: AppBar(backgroundColor: Colors.transparent,),
    body: SafeArea(
      child: Container(margin: EdgeInsets.all(20),
        child: Column( children: [ Text(widget.doc["note_title"]),
        Text(widget.doc["creation_date"]),
        SizedBox(height: 10,),
        Text(widget.doc["note_content"])],),
      ),
    ),
    
    );
  }
}