import 'package:flutter/material.dart';

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
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
        color: Color(0xffE2DCFF),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      height: 80,
      width: 400,
      child: Row(
        children: [
          const Icon(
            Icons.document_scanner,
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Total bill",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Status",
                      style: TextStyle(fontSize: 12),
                    ),


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