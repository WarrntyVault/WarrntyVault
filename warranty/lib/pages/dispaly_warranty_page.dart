import 'package:flutter/material.dart';
import 'package:warranty/models/warranty_list.dart';

class DisplayWarrantyPage extends StatefulWidget {
  const DisplayWarrantyPage({super.key,
    required this.warranty});

  final WarrantyList warranty;
  @override
  State<DisplayWarrantyPage> createState() => _DisplayWarrantyPageState();
}

class _DisplayWarrantyPageState extends State<DisplayWarrantyPage> {
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
               Text(widget.warranty.type),
              const SizedBox(
                height: 20,
              ),
              const Text("Client Info", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              DispalyClientInfo(),
              const SizedBox(
                height: 20,
              ),
              const Text("Company Details",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              DisplayCompanyInfo(),
              const SizedBox(
                height: 20,
              ),
              const Text("Warranty Details",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              DispalyWarrantyInfo(),
              const SizedBox(
                height: 20,
              ),
              const Text("Picture",style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
              const SizedBox(
                height: 10,
              ),
              DispalyPicture(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Components of Display Warranty Page
  Container DispalyPicture() {
    return Container(
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
            );
  }

  Container DispalyWarrantyInfo() {
    return Container(
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
                children:  [
                  Text("Type: ${widget.warranty.type}",style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Reference Number: ${widget.warranty.referenceNumber}",style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Status:",style: TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Start Date: ${widget.warranty.startDate}",style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Expiration Date: ${widget.warranty.expirationDate}",style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
  }

  Container DisplayCompanyInfo() {
    return Container(
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
                children:  [
                  Text("Company: ${widget.warranty.company}",style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Contact Number: ${widget.warranty.contactNumber}",style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                ],
              ),
            );
  }

  Container DispalyClientInfo() {
    return Container(
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
                children:  [
                  Text("Name: ${widget.warranty.clientName}", style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                  const SizedBox(height: 20,),
                  Text("Phone Number: ${widget.warranty.clientNumber} ", style: const TextStyle(fontSize: 16,color: Color(0xff5B42CF) ),),
                ],
              ),
            );
  }
}

