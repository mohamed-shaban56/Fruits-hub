import 'dart:io';

import 'package:equatable/equatable.dart';


// ignore: must_be_immutable
class ProductInputEntity extends Equatable{
final double productPrice;
final String productName;
final String productCode;
final String productDesc;
 String ?imageUrl;
 File ?fileImage;
final int experationMonths;
final int numOfcolories;
final int organicPercentage;
final num averageRating;
final num averageCount;
final int unit;
  ProductInputEntity({required  this.experationMonths,required this.numOfcolories,required this.organicPercentage,required this.averageRating,required this.averageCount,required this.unit,required this.productPrice, required this.productName, required this.productCode, required this.productDesc, this.imageUrl,  this.fileImage});
  
  @override

  List<Object?> get props => [productCode,productName];

}