import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '_warrantytitle.dart';

class ClientWarrantyStats extends StatelessWidget {
  const ClientWarrantyStats({
    super.key,
  });


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
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            color: Color(0xffFFFFFF),

            borderRadius: BorderRadius.all(
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
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          height: 180,
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text("Total Warranties",style: TextStyle(fontSize: 14 , color: Color(0xff5B42CF) ),),
              SizedBox(height: 20,),
              Text("Num"),
              SizedBox(height: 20,),
              Text("Valid:",style: TextStyle(fontSize: 14 , color: Colors.red ),),
              Text("Expired:",style: TextStyle(fontSize: 14 , color: Colors.green ),),
            ],
          ),
        ),
      ],
    );
  }
}