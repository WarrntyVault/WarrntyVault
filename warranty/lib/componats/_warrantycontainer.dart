import 'package:flutter/material.dart';
import 'package:warranty/models/warranty_list.dart';
import 'package:warranty/pages/dispaly_warranty_page.dart';

import '../models/AppIcons.dart';
import '_warrantybreif.dart';
import '_warrantytitle.dart';

class WarrantyContainer extends StatefulWidget {
  const WarrantyContainer({
    super.key, required this.warranty,
  });
  final WarrantyList warranty;

  @override
  State<WarrantyContainer> createState() => _WarrantyContainerState();
}

class _WarrantyContainerState extends State<WarrantyContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayWarrantyPage(warranty: widget.warranty,)));},
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration:  BoxDecoration(
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
          height: 220,
          width: 220,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon( AppIcons.document_scanner_rounded , size: 35,color: Colors.white,),
                  InkWell(
                      child: Icon(Icons.more_horiz, size: 35,color: Colors.black,)),
                ],
              ),
              const SizedBox(height: 10,),
               WarrantyTitle(warranty: widget.warranty),
               WarrantyBreif(warranty: widget.warranty),
            ],
          ),
        ),
      ),
    );
  }
}