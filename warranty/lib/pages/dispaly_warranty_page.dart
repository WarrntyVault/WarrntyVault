import 'package:flutter/material.dart';

class DisplayWarrantyPage extends StatelessWidget {
  const DisplayWarrantyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const Text("Warranty Title"),
              const SizedBox(
                height: 20,
              ),
              const Text("Client Info", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
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
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Name: ", style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(height: 20,),
                    Text("Phone Number: ", style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Company Details",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
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
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Company:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Contact Number:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Warranty Details",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
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
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Type:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Reference Number:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Status:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Start Date:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Expiration Date:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Picture",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
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
                height: 400,
                child: const Placeholder(),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

