import 'package:warranty/pages/camera_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

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
              children: [
                const ScanTitle(),
                const SizedBox(
                  height: 10,
                ),
                const Divider(color: Colors.black, thickness: 1,),
                const SizedBox(
                  height: 20,
                ),
                const Placeholder(
                  color: Color(0xffE2DCFF),
                  fallbackHeight: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CameraButton(),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                const FillWarrantyInfo(),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5B42D1),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Confirm"),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class FillWarrantyInfo extends StatelessWidget {
  const FillWarrantyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffE2DCFF),
                  border: InputBorder.none,

                  hintText: 'Brand',
                ),
              ),
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(

                borderRadius: BorderRadius.all(
                  Radius.circular(32),

                ),
              ),
              width: 225,
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffE2DCFF),
                  border: InputBorder.none,
                  hintText: 'Type',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffE2DCFF),
              border: InputBorder.none,
              hintText: 'Phone',
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: const TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.date_range,
                color: Colors.black,
              ),
              filled: true,
              fillColor: Color(0xffE2DCFF),
              border: InputBorder.none,
              hintText: 'Start Date',
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: const TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.date_range,
                color: Colors.black,
              ),
              filled: true,
              fillColor: Color(0xffE2DCFF),
              border: InputBorder.none,
              hintText: 'Expiration Date',
            ),
          ),
        ),
      ],
    );
  }
}

class CameraButton extends StatelessWidget {
  const CameraButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await availableCameras()
            .then((value) => Navigator.push(context, MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
      },
      icon: const Icon(Icons.document_scanner, size: 30, color: Color(0xff5B42D1),),
    );
  }
}

class ScanTitle extends StatelessWidget {
  const ScanTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Add Warranty",textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      ],
    );
  }
}