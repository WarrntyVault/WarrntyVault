import 'package:warranty/pages/camera_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../componats/_camerabutton.dart';
import '../componats/_fillwarrantyInfo.dart';
import '../componats/_scantitle.dart';
import 'camera_page.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: const [
                ScanTitle(),
                SizedBox(
                  height: 10,
                ),
                Divider(color: Colors.black, thickness: 1,),
                SizedBox(
                  height: 20,
                ),
                Placeholder(
                  color: Color(0xffE2DCFF),
                  fallbackHeight: 300,
                ),
                SizedBox(
                  height: 20,
                ),
                CameraButton(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                FillWarrantyInfo(),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          )),
    );
  }
}




