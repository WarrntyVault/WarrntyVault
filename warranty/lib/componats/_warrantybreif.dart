import 'package:flutter/material.dart';

class WarrantyBreif extends StatelessWidget {
  const WarrantyBreif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Refernce Number", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text("#10023",style: TextStyle(fontSize: 12,color: Colors.grey), ),
        Text("Type", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text("Device",style: TextStyle(fontSize: 12,color: Colors.grey), ),
        Text("Total Bill", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text("2000 SAR",style: TextStyle(fontSize: 12,color: Colors.grey), ),
        Text("Expiration Date", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        Text("DD/MM/YYYY",style: TextStyle(fontSize: 12,color: Colors.grey), ),


      ],
    );
  }
}