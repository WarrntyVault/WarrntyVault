import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:warranty/models/warranty_list.dart';

import '_warrantytitle.dart';

class ClientWarrantyStats extends StatefulWidget {
  const ClientWarrantyStats({
    super.key, required this.Warranties,
  });

  final List<WarrantyList> Warranties;


  @override
  State<ClientWarrantyStats> createState() => _ClientWarrantyStatsState();
}

class _ClientWarrantyStatsState extends State<ClientWarrantyStats> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),

                blurRadius: 7,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
            color: const Color(0xffFFFFFF),

            borderRadius: const BorderRadius.all(
              Radius.circular(16),

            ),
          ),
          height: 180,
          width: 180,
          child: Column(
            children: const [

              Text("Total Warranties Price",style: TextStyle(fontSize: 14 , color: Color(0xff5B42CF) ),),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 90, 0),
                child: Text("Price"),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration:  BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 7,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
            color: const Color(0xffFFFFFF),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          height: 180,
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:  [
              const Text("Total Warranties ",style: TextStyle(fontSize: 14 , color: Color(0xff5B42CF) ),),
              const SizedBox(height: 20,),
              Text("${widget.Warranties.length}"),
              const SizedBox(height: 20,),
              const Text("Valid:",style: TextStyle(fontSize: 14 , color: Colors.red ),),
              const Text("Expired:",style: TextStyle(fontSize: 14 , color: Colors.green ),),
            ],
          ),
        ),
      ],
    );
  }
}