import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                NotificationTitle(),
                Divider(color: Colors.black, thickness: 3,),


                SizedBox(
                  height: 20,
                ),
                NotificationCard(),
                SizedBox(
                  height: 10,
                ),
                NotificationCard(),
                SizedBox(
                  height: 10,
                ),
                NotificationCard(),
                SizedBox(
                  height: 10,
                ),
                NotificationCard(),
              ],
            ),
          )),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xff8B95CA),
          borderRadius: const BorderRadius.all(
            Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 7,
            ),
          ]),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.notifications,
          ),
          SizedBox(width: 10,),
          Text("Please notice that your Bill No. #xxxx soon will expire."),
        ],
      ),
    );
  }
}

class NotificationTitle extends StatelessWidget {
  const NotificationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Notification",textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
      ],
    );
  }
}