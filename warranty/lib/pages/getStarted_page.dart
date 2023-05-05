import 'package:flutter/material.dart';
import 'package:warranty/pages/login_page.dart';


class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

              SizedBox(
                height: 400,
                child: Image.asset(
                    'lib/images/img.png', // replace with your image path
                    fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                  alignment: Alignment.topCenter,// adjust image fit to container,
                  ),
              ),

            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  const Text("Never lose track of your warranties again with our innovative warranty vault app!",
                    style: TextStyle(
                      fontSize: 20 ,
                      color: Color(0xff3755F4),
                    ),
                    textAlign: TextAlign.center,

                  ),

                  SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5B42D1),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text("GET STARTED", style: TextStyle(fontSize: 25 , ),),
                    ),
                  ),
                ],
              ),
            )


             /*Container(
               height: 500,
               width: 500,
               child: Image.asset(
               'lib/images/img.png', // replace with your image path
               fit: BoxFit.cover, // adjust image fit to container,
             )

             )*/
          ],
        ),

      ),
    );
  }
}
