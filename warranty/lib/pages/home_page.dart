import 'dart:developer';
import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:warranty/componats/_clientwarrantystats.dart';
import 'package:warranty/componats/_recentwarranites.dart';

import '../componats/_addwarrantybutton.dart';
import '../componats/_dashboardtitle.dart';
import '../componats/_warrantybreif.dart';
import '../componats/_warrantycontainer.dart';
import '../componats/_warrantytitle.dart';
import '../models/warranty_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  List<WarrantyList> warranties = [];

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

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const DashboardTitle(),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const AddWarrantyButton(),
                    const SizedBox(
                      width: 15,
                    ),
                  for (final warranty in warranties ) ...[
                WarrantyContainer(
                warranty: warranty
            ),

            const SizedBox(
              height: 10,
            ),
          ]

              ]
                ),
              ),
            ),
            const SizedBox(
              height:20,
            ),

            ClientWarrantyStats(Warranties: warranties),
            const SizedBox(
              height: 20,
            ),
             const RecentWarrnties(),
          ],
        ),
      ),
    );
  }
}









