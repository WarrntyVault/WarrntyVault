


import 'package:flutter/material.dart';

class WarrantyStatus extends StatefulWidget {


  const WarrantyStatus({Key? key , required this.expirtatiomDate , required this.startDate}) : super(key: key);

  final DateTime expirtatiomDate;
  final DateTime startDate;



  @override
  State<WarrantyStatus> createState() => _WarrantyStatusState();
}


class _WarrantyStatusState extends State<WarrantyStatus> {



  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
