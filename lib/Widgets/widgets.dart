import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget noteCard(Function()? ontap,QueryDocumentSnapshot doc){
return InkWell(onTap: ontap,child: Container(color: Colors.red.shade300,margin: EdgeInsets.all(8),padding: EdgeInsets.all(8),child: Column(children: [Text(doc["note_title"]),Text(doc["creation_date"]),Text(doc["note_content"])],),),);
}