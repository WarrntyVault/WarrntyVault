import 'package:flutter/material.dart';

import '_recentwarrntycontainer.dart';

class RecentWarrnties extends StatelessWidget {
  const RecentWarrnties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 7,
            offset: Offset(0, -4), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const  Text(
            "Recent Warranties                         ",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(children: [
            for (int i = 0; i < 6; i++) ...[
              const RecentWarrntyContainer(),
              const SizedBox(
                height: 10,
              ),
            ],
          ]),
        ],
      ),
    );
  }
}