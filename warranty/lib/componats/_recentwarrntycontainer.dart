import 'package:flutter/material.dart';
import 'package:warranty/pages/dispaly_warranty_page.dart';

import '../models/AppIcons.dart';

class RecentWarrntyContainer extends StatelessWidget {
  const RecentWarrntyContainer({
    super.key,
  });

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
                const Text("Warranty title"),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Text(
                      "Date",
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      "Total bill",
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      "Status",
                      style: TextStyle(fontSize: 12),
                    ),
                    IconButton(
                      icon: const Icon(AppIcons.arrow_forward, color: Colors.black, size: 30,),
                      onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const DisplayWarrantyPage()
                      )
                      ); },)

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