import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NotesEditorScreen extends StatefulWidget {
  const NotesEditorScreen({super.key});

  @override
  State<NotesEditorScreen> createState() => _NotesEditorScreenState();
}

class _NotesEditorScreenState extends State<NotesEditorScreen> {


  TextEditingController _titleController = TextEditingController();
  TextEditingController _noteContentContoller = TextEditingController();
  String date=DateTime.now().toString();

  
    @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(backgroundColor: Color.fromARGB(255, 255, 204, 136),
      appBar: AppBar(title: Text('Add a New Note'),backgroundColor: Colors.transparent,),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [TextFormField(controller: _titleController,decoration: InputDecoration(border: InputBorder.none,hintText: 'Note Title'),),
        Text(date),
        SizedBox(height: 40,),
        TextFormField(keyboardType: TextInputType.multiline,maxLines: null,controller: _noteContentContoller,decoration: InputDecoration(border: InputBorder.none,hintText: 'Type your Content'),)],),
      ),
      floatingActionButton:FloatingActionButton.extended(focusColor: Colors.red,
    splashColor:Colors.red.shade300 ,
    backgroundColor: Colors.orange,
    onPressed: ()async{
      FirebaseFirestore.instance.collection("Notes").add({
        "note_title":_titleController.text,
        "creation_date":date,
        "note_content":_noteContentContoller.text}).then((value) {
          print(value.id);
          Navigator.pop(context);
        }).catchError(
          (error) => print('Failed to add new  Note due to $error'));
        }
      , label: Text("Save"),icon: Icon(Icons.save),),
  
      ),
    );

  }
}