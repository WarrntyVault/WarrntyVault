import 'package:flutter/material.dart';

import '../models/AppIcons.dart';

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
          Icon(AppIcons.person_rounded, size: 50,),

        ],
      ),
    );
  }
}