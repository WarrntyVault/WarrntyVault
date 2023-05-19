import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:warranty/models/AppIcons.dart';
import 'package:warranty/models/warranty_list.dart';

import '../componats/_customButton.dart';
import 'dispaly_warranty_page.dart';

class WarrantiesPage extends StatefulWidget {
  const WarrantiesPage({Key? key}) : super(key: key);

  @override
  State<WarrantiesPage> createState() => _WarrantiesPageState();
}

class _WarrantiesPageState extends State<WarrantiesPage> {
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
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children:  [
                const WarrantiesTitle(),
                const Divider(color: Colors.black, thickness: 3,),
                const SizedBox(
                  height: 50,
                ),
                const ValidExpiredButtons(),
                const SizedBox(
                  height: 50,
                ),

                Column(children: [
                  for (final warranty in warranties ) ...[
                     DisplayWarranty(
                        warranty: warranty
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ]),
              ],
            ),
          )),
    );
  }
}

////////////////////////////////////////////////////////////////


class DisplayWarranty extends StatefulWidget {
  const DisplayWarranty({
    Key? key,
    required this.warranty,
  }) : super(key: key);

  final WarrantyList warranty;

  @override
  _DisplayWarrantyState createState() => _DisplayWarrantyState();
}

class _DisplayWarrantyState extends State<DisplayWarranty> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>   DisplayWarrantyPage(
                      warranty: widget.warranty,
                    )));
                  },
                    child:  const Icon(AppIcons.library_books)
                ),
                Column(
                  children:  [
                    Text(widget.warranty.type),
                    Text("Reference No: ${widget.warranty.referenceNumber}"),
                  ],
                ),
                Icon(
                  _expanded ? AppIcons.arrow_drop_up : AppIcons.arrow_drop_down,
                ),
              ],
            ),
          ),

          if (_expanded)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),

                const Placeholder(
                  fallbackHeight: 200,
                  fallbackWidth: 200,
                ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text("Name: ${widget.warranty.clientName}"),
                    Text("Phone: ${widget.warranty.clientNumber}"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text("Type: ${widget.warranty.type}"),
                    const Text("Status:"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("Start date: ${widget.warranty.startDate}"),
                    Text("Expiration date: ${widget.warranty.expirationDate}"),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}









/////////////////////////////////////////////////////////////////////////
class ValidExpiredButtons extends StatefulWidget {
  const ValidExpiredButtons({super.key});

  @override
  _ValidExpiredButtonsState createState() => _ValidExpiredButtonsState();
}

class _ValidExpiredButtonsState extends State<ValidExpiredButtons> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MyButtonGroup(
        ),
        SizedBox(height: 16),

      ],
    );
  }
}
///////////////////////////////////////////////////////////////







class WarrantiesTitle extends StatelessWidget {
  const WarrantiesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("WARRANTIES",textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      ],
    );
  }
}