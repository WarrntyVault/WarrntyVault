import 'dart:developer';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/warranty_list.dart';
import '_recentwarrntycontainer.dart';


class RecentWarrnties extends StatefulWidget {
  const RecentWarrnties({
    super.key,
  });

  @override
  State<RecentWarrnties> createState() => _RecentWarrntiesState();
}

class _RecentWarrntiesState extends State<RecentWarrnties> {

  // declare a list to store user warranties
  List<WarrantyList> warranties = [];

  // get user ID form firebase
  final userID = FirebaseAuth.instance.currentUser?.uid;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance.collection('Warranties').where('UID', isEqualTo: userID).snapshots().listen((collection) {
      log('col count: ${collection.docs.length}');

      List<WarrantyList> newList = [];

      for (final doc in collection.docs) {
        final warranty = WarrantyList.fromMap(doc.data());
        newList.add(warranty);
      }

      warranties = newList;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 7,
            offset: const Offset(0, -4), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0),),),
      child: Column(
        children: [
          ////////////////////////////////////
          const SizedBox(height: 20,),
          const  Text(
            "Recent Warranties                         ",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
              children:  [
              for (final warranty in warranties ) ...[
              RecentWarrantyContainer(
                warranty: warranty
              ),
              const SizedBox(
                height: 10,
              ),
              ]

          ]),
        ],
      ),
    );
  }
}