class WarrantyList {
  final String clientName;
  final String clientNumber;
  final String company;
  final String contactNumber;
  final String referenceNumber;
  final String type;
  final String startDate;
  final String expirationDate;

  WarrantyList({
    required this.clientName,
    required this.clientNumber,
    required this.company,
    required this.contactNumber,
    required this.referenceNumber,
    required this.type,
    required this.startDate,
    required this.expirationDate,
  });

  static List<WarrantyList> warranties = [];

  Map<String, dynamic> toMap() {
    return {
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