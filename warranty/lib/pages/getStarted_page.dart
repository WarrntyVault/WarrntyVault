import 'package:flutter/material.dart';
import 'package:warranty/pages/login_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  bool isLoading = false;

  void _navigateToLoginPage() {
    setState(() {
      isLoading = true;
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))
        .then((value) => setState(() {
      isLoading = false;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DisplayImage(),
                    const SizedBox(
                      height: 50,
                    ),
                    DisplayGetStartedText()
                  ],
                ),
              ],
            ),
            if (isLoading)
              Container(
                color: Colors.white.withOpacity(0.8),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // Components of GetStrated Page

  Padding DisplayGetStartedText() {
    return Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Never lose track of your warranties again with our innovative warranty vault app!",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff3755F4),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: _navigateToLoginPage,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff5B42D1),
                              shape: const StadiumBorder(),
                            ),
                            child: const Text(
                              "GET STARTED",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }

  Container DisplayImage() {
    return Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/images/img.png'),
                      ),
                    ),
                  );
  }
}
