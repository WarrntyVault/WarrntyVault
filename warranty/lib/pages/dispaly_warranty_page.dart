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
              const Text("Client Info"),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Name:"),
                    Text("Phone Number:"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Company Details"),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Company:"),
                    Text("Contact Number:"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Warranty Details"),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Type:"),
                    Text("Reference Number:"),
                    Text("Status:"),
                    Text("Start Date:"),
                    Text("Expiration Date:"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
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
                height: 400,
                child: const Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}