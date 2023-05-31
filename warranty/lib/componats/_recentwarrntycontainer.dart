import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
import 'package:flutter/material.dart';
import 'package:warranty/models/warranty_list.dart';
import 'package:warranty/pages/dispaly_warranty_page.dart';

import '../models/AppIcons.dart';

class RecentWarrantyContainer extends StatefulWidget {
  const RecentWarrantyContainer({
    super.key, required this.warranty,
  });
  final WarrantyList warranty;

  @override
  State<RecentWarrantyContainer> createState() => _RecentWarrantyContainerState();
}

class _RecentWarrantyContainerState extends State<RecentWarrantyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 7,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        color: const Color(0xffE2DCFF),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      height: 100,
      width: 400,
      child: Row(
        children: [
          const Icon(
            AppIcons.document_scanner,
            size: 32,

          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Reference: ${widget.warranty.referenceNumber} "),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                      Text(
                      "Expiration Date: ${widget.warranty.expirationDate}",
                      style: const TextStyle(fontSize: 12),
                    ),
                      Text(
                      "Company: ${widget.warranty.company}",
                      style: const TextStyle(fontSize: 12),
                    ),
                      const Text(
                      "Status: ",
                      style: TextStyle(fontSize: 12),
                    ),
                    IconButton(
                      icon: const Icon(AppIcons.arrow_forward, color: Colors.black, size: 30,),
                      onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) =>   DisplayWarrantyPage(warranty: widget.warranty,)
                      )
                      ); }
                      ,)

                    ],

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}