import 'package:flutter/material.dart';
import 'package:warranty/models/warranty_list.dart';

class WarrantyBreif extends StatelessWidget {
  const WarrantyBreif({
    super.key, required this.warranty,
  });
final WarrantyList warranty;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:  [
        const Text("Refernce Number", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,)),
        Text("#${warranty.referenceNumber}",style: const TextStyle(fontSize: 12,color: Colors.grey), ),
        const Text("Type", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text(warranty.type,style: const TextStyle(fontSize: 12,color: Colors.grey), ),
        const Text("Company", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text(warranty.company,style: const TextStyle(fontSize: 12,color: Colors.grey), ),
        const Text("Expiration Date", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text(warranty.expirationDate,style: const TextStyle(fontSize: 12,color: Colors.grey), ),


      ],
    );
  }
}