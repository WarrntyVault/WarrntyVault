import 'package:flutter/material.dart';
import 'package:warranty/componats/_clientwarrantystats.dart';
import 'package:warranty/componats/_recentwarranites.dart';

import '../componats/_addwarrantybutton.dart';
import '../componats/_dashboardtitle.dart';
import '../componats/_warrantybreif.dart';
import '../componats/_warrantycontainer.dart';
import '../componats/_warrantytitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const DashboardTitle(),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const AddWarrantyButton(),
                    const SizedBox(
                      width: 20,
                    ),
                    for (int i = 0; i < 5; i++) ...[const WarrantyContainer(), const SizedBox(width: 10)]
                  ],
                ),
              ),
            ),
            const SizedBox(
              height:20,
            ),
            const ClientWarrantyStats(),
            const SizedBox(
              height: 20,
            ),
            const RecentWarrnties(),
          ],
        ),
      ),
    );
  }
}









