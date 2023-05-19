import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class WarrantyList {
  final String UID;
  final String clientName;
  final String clientNumber;
  final String company;
  final String contactNumber;
  final String referenceNumber;
  final String type;
  final String startDate;
  final String expirationDate;

  WarrantyList({
    required this.UID,
    required this.clientName,
    required this.clientNumber,
    required this.company,
    required this.contactNumber,
    required this.referenceNumber,
    required this.type,
    required this.startDate,
    required this.expirationDate,
  });





  Map<String, dynamic> toMap() {
    return {
      'UID': UID,
      'clientName': clientName,
      'clientNumber': clientNumber,
      'company': company,
      'contactNumber': contactNumber,
      'referenceNumber': referenceNumber,
      'type': type,
      'startDate': startDate,
      'expirationDate': expirationDate,
    };

  }

  factory WarrantyList.fromMap(Map<String, dynamic> map) {
    return WarrantyList(
      UID: map['UID'],
      clientName: map['clientName'],
      clientNumber: map['clientNumber'],
      company: map['company'],
      contactNumber: map['contactNumber'],
      referenceNumber: map['referenceNumber'],
      type: map['type'],
      startDate: map['startDate'],
      expirationDate: map['expirationDate'],
    );
  }



}