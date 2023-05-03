import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FillWarrantyInfo extends StatefulWidget {
  const FillWarrantyInfo({
    super.key,
  });

  @override
  State<FillWarrantyInfo> createState() => _FillWarrantyInfoState();
}

class _FillWarrantyInfoState extends State<FillWarrantyInfo> {


  //company info
  TextEditingController companyController = TextEditingController();
  TextEditingController contactnumberController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController referenceNumberController = TextEditingController();
  //client info
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController startdateController = TextEditingController();
  TextEditingController enddateController = TextEditingController();

  @override
  Future<void> warrantySetup(
      String name,
      String phone,
      String company,
      String contactNumber,
      String type,
      String referenceNumber,
      String startDate,
      String endDate,
      )async{
    CollectionReference warranties = FirebaseFirestore.instance.collection("Warranties");
    warranties.add({
      'clientName': nameController.text,
      'clientNumber': phoneController.text,
      'company': companyController.text,
      'contactNumber': contactnumberController.text,
      'type': typeController.text,
      'referenceNumber': referenceNumberController.text,
      'startDate': startdateController.text,
      'expirationDate': enddateController.text,
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
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,
              child:  TextField(controller: nameController ,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: InputBorder.none,

                  hintText: 'Full Name',
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
              child:  TextField(
              controller: phoneController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
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
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              width: 225,
              child:  TextField(
              controller: companyController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: InputBorder.none,

                  hintText: 'Company',
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
              child:  TextField(
    controller: contactnumberController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.purple),
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
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child:  TextField(
            controller: referenceNumberController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
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

        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child:  TextField(
    controller: typeController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
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
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
          child:  TextField(
            controller: startdateController,
            decoration: InputDecoration(
              icon: Icon(
                Icons.date_range,
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
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
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),

          ),
          child:  TextField(
            controller: enddateController,
            decoration: InputDecoration(
              icon: Icon(
                Icons.date_range,
                color: Colors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.purple),
                borderRadius: BorderRadius.circular(32),
              ),
              border: InputBorder.none,
              hintText: 'Expiration Date',
            ),
          ),
        ),
        SizedBox(height: 10,),
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
                    contactnumberController.text,
                    referenceNumberController.text,
                    typeController.text,
                    startdateController.text,
                    enddateController.text,
                  );
                  name=nameController.text;
                  phone=phoneController.text;
                  company= companyController.text;
                  contactNumber=contactnumberController.text;
                  referenceNumber=referenceNumberController.text;
                  type=typeController.text;
                  startDate=startdateController.text;
                  endDate=enddateController.text;
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