import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';

class AddressModel{


  final String fullName; 
  final String email;
   String address;
  final String city;
  final String phoneNumber;
  final String floorApartment;

  AddressModel({required this.fullName, required this.email, required this.address, required this.city, required this.phoneNumber, required this.floorApartment});


factory AddressModel.fromEntity(AddressEntity addressEntity)
{
  return AddressModel(fullName: addressEntity.fullName, email: addressEntity.email, address: addressEntity.address, city: addressEntity.city, phoneNumber: addressEntity.phoneNumber, floorApartment: addressEntity.floorApartment);
}
factory AddressModel.fromjson(Map<String ,dynamic>json)
{
  return AddressModel(fullName: json['fullName'], email: json['email'], address: json['address'], city: json['city'], phoneNumber: json['phoneNumber'], floorApartment: json['floorApartment']);
}
toJson() {
return {
'fullName':fullName,
'email':email,
'address':address,
'phoneNumber':phoneNumber,
'floorApartment':floorApartment,
'city':city
};
  }


  toEntity()=>AddressEntity(fullName: fullName, email: email, address: address, city: city, phoneNumber: phoneNumber, floorApartment: floorApartment);
}