import 'package:flutter/material.dart';

import '_warrantybreif.dart';
import '_warrantytitle.dart';

class WarrantyContainer extends StatelessWidget {
  const WarrantyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:  BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],

        color: Color(0xffE2DCFF),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      height: 220,
      width: 220,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.document_scanner_rounded , size: 35,color: Colors.white,),
              Icon(Icons.more_horiz, size: 35,color: Colors.white,),
            ],
          ),
          const SizedBox(height: 10,),
          const WarrantyTitle(),
          const WarrantyBreif(),
        ],
      ),
    );
  }
}