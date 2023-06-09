import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:warranty/componats/_BottomNavBarState.dart';
import 'package:warranty/pages/scan_page.dart';
import 'package:intl/intl.dart';
import '../models/AppIcons.dart';


class FillWarrantyInfo extends StatefulWidget {
  const FillWarrantyInfo({
    super.key,
  });

  @override
  State<FillWarrantyInfo> createState() => _FillWarrantyInfoState();
}

// inputs for warranty info

class _FillWarrantyInfoState extends State<FillWarrantyInfo> {
  //client info
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  //company info
  final companyController = TextEditingController();
  final contactNumberController = TextEditingController();
  //warranty info
  final typeController = TextEditingController();
  final referenceNumberController = TextEditingController();
  final startDateController = TextEditingController();
  final expirationDateController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    companyController.dispose();
    contactNumberController.dispose();
    typeController.dispose();
    referenceNumberController.dispose();
    startDateController.dispose();
    expirationDateController.dispose();
    super.dispose();
  }



  Future<void> warrantySetup(
      String name,
      String phone,
      String company,
      String contactNumber,
      String type,
      String referenceNumber,
      String startDate,
      String expirationDate,
      ) async {
    String? UID = FirebaseAuth.instance.currentUser?.uid;
    CollectionReference warranties = FirebaseFirestore.instance.collection("Warranties");
    warranties.add({
      'UID': UID,
      'clientName': name,
      'clientNumber': phone,
      'company': company,
      'contactNumber': contactNumber,
      'type': type,
      'referenceNumber': referenceNumber,
      'startDate': startDate,
      'expirationDate': expirationDate,
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Full name input
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: InputBorder.none,
                  hintText: 'Full Name',
                ),
              ),
            ),

            // Phone Number input
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,

              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: InputBorder.none,
                  hintText: 'Phone Number',
                ),
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Company input
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,
              child: TextField(
                controller: companyController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: InputBorder.none,
                  hintText: 'Company',
                ),
              ),
            ),

            // Contact Number input
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,
              child: TextField(
                controller: contactNumberController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: InputBorder.none,
                  hintText: 'Contact Number',
                ),
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        // reference number input
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: TextField(
            controller: referenceNumberController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              border: InputBorder.none,
              hintText: 'Reference Number',
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        // Device type input
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: TextField(
            controller: typeController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              border: InputBorder.none,
              hintText: 'Device Type',
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),


        // Start date picker
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: TextField(
            controller: startDateController,
            onTap: () async {
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      primaryColor: Colors.purple, // Set the primary color of the date picker header and selected date
                      colorScheme: const ColorScheme.light(
                        primary: Colors.purple, // Set the color of the selected date text
                      ),
                    ),
                    child: child!,
                  );
                },

              );
              if (pickedDate != null) {
                final formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                startDateController.text = formattedDate; // Update the text field value with the selected date
              }
            },
            decoration: InputDecoration(
              icon: const Icon(
                AppIcons.date_range,
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              border: InputBorder.none,
              hintText: 'Start Date',
            ),
          ),
        ),


        const SizedBox(
          height: 10,
        ),


        // expiration date picker
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child: TextField(
            controller: expirationDateController,
            onTap: () async {
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      primaryColor: Colors.purple, // Set the primary color of the date picker header and selected date
                      colorScheme: const ColorScheme.light(
                        primary: Colors.purple, // Set the color of the selected date text
                      ),
                    ),
                    child: child!,
                  );
                },

              );
              if (pickedDate != null) {
                final formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                expirationDateController.text = formattedDate; // Update the text field value with the selected date
              }
            },
            decoration: InputDecoration(
              icon: const Icon(
                AppIcons.date_range,
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              border: InputBorder.none,
              hintText: 'Expiration Date',
            ),
          ),
        ),

        ////////////////////////////////////////////////////////////////
        const SizedBox(
          height: 10,
        ),

        //////////////////////////////////////////////////////////////////////////////////////////////


        SizedBox(
          width: 200,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                warrantySetup(
                  nameController.text,
                  phoneController.text,
                  companyController.text,
                  contactNumberController.text,
                  typeController.text,
                  referenceNumberController.text,
                  startDateController.text,
                  expirationDateController.text,
                ).then((value) {
                  //show a success message to the user
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Warranty information added.'),
                    ),
                  );
                });
              });
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const BottomNavBar()));
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff5B42D1),
              shape: const StadiumBorder(),
            ),
            child: const Text("Confirm"),
          ),
        )
      ],
    );
  }
}