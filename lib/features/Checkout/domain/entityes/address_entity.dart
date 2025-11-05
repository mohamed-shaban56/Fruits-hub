import 'package:flutter/material.dart';



class AddressEntity extends ChangeNotifier {


  final String fullName; 
  final String email;
   String address;
  final String city;
  final String phoneNumber;
  final String floorApartment;

  AddressEntity({required this.fullName, required this.email, required this.address, required this.city, required this.phoneNumber, required this.floorApartment});
  @override
String toString()
{
  return '$address ميني رقم $floorApartment ';
}

void updateAddress(String newaddress)
{
address=newaddress;
notifyListeners();
}

}