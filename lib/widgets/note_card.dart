import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/style/app_style.dart';

Widget noteCard(Function()? onTab, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTab,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cards[doc["color_id"]],
        borderRadius: BorderRadius.circular(8.0)
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(doc["note_title" ],
          style: AppStyle.mainTitle,
           ),
SizedBox(height: 0.4,),
            Text(doc["creation_date"],
          style: AppStyle.dateTitle,
           ),
           SizedBox(height: 0.8,),
            Text(doc["note_content"],
          style: AppStyle.mainContent,
          overflow: TextOverflow.ellipsis,
           ),
      ],
      ),
    ),


  );
}
