import 'package:flutter/material.dart';
import 'package:warranty/pages/scan_page.dart';

import '../models/AppIcons.dart';

class AddWarrantyButton extends StatelessWidget {
  const AddWarrantyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ScanPage()));},
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 7,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          color: Color(0xff5B42D1),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        height: 220,
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: RichText(
                text: const TextSpan(
                  text: 'Add Warranty',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const Icon(AppIcons.add, color: Colors.white, ),
          ],
        ),
      ),
    );
  }
}