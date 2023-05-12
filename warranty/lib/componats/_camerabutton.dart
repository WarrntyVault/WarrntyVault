import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../models/AppIcons.dart';
import '../pages/camera_page.dart';

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
      icon: const Icon(AppIcons.document_scanner, size: 30, color: Color(0xff5B42D1),),
    );
  }
}