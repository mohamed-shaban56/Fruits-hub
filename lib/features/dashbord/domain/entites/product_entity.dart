

import 'package:equatable/equatable.dart';


// ignore: must_be_immutable
class ProductEntity extends Equatable{
final double productPrice;
final String productName;
final String productCode;
final String productDesc;
final String imageUrl;
final int experationMonths;
final int numOfcolories;
final bool isOrganic;
final num averageRating;
final num averageCount;
final int unit;
 const ProductEntity({required  this.experationMonths,required this.numOfcolories,required this.isOrganic,required this.averageRating,required this.averageCount,required this.unit,required this.productPrice, required this.productName, required this.productCode, required this.productDesc, required this.imageUrl,});
  
  @override

  List<Object?> get props => [productCode,productName];

}