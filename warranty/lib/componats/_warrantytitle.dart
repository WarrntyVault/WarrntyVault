import 'package:flutter/cupertino.dart';
import 'package:warranty/models/warranty_list.dart';

class WarrantyTitle extends StatelessWidget {
  const WarrantyTitle({
    super.key, required this.warranty,
  });
final WarrantyList warranty;
  @override
  Widget build(BuildContext context) {
    return  Text(warranty.type);
  }
}