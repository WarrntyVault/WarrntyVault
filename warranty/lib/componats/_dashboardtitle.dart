import 'package:flutter/material.dart';

class DashboardTitle extends StatelessWidget {
  const DashboardTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "DASHBORAD",
            style: TextStyle(fontSize: 30),
          ),
          Icon(Icons.person_rounded, size: 50,),

        ],
      ),
    );
  }
}