
import 'dart:io';

import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_input_entity.dart';



class ProductInputModel {

  final int sellingCount;

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
ProductInputModel({required  this.experationMonths,required this.numOfcolories,required this.organicPercentage,required this.averageRating,required this.averageCount,required this.unit,required this.productPrice, required this.productName, required this.productCode, required this.productDesc, this.imageUrl,this.sellingCount=0  ,this.fileImage});



factory ProductInputModel.fromEntity(ProductInputEntity addProductEntity)
{
  return ProductInputModel(
    productPrice: addProductEntity.productPrice, 
    productName: addProductEntity.productName,
     productCode: addProductEntity.productCode, 
     productDesc: addProductEntity.productDesc,
     imageUrl: addProductEntity.imageUrl,
      fileImage: addProductEntity.fileImage, experationMonths: addProductEntity.experationMonths,
       numOfcolories: addProductEntity.numOfcolories,
        organicPercentage: addProductEntity.organicPercentage,
         averageRating: addProductEntity.averageRating, 
         averageCount: addProductEntity.averageCount,
          unit: addProductEntity.unit,
      
      );
}
  // ✅ تحويل من Model إلى Entity
  ProductInputEntity toEntity() {
    return ProductInputEntity(
      experationMonths: experationMonths,
      numOfcolories: numOfcolories,
      organicPercentage:organicPercentage,
      averageRating: averageRating,
      averageCount: averageCount,
      unit: unit,
      productPrice: productPrice,
      productName: productName,
      productCode: productCode,
      productDesc: productDesc,
      imageUrl: imageUrl,
      fileImage: fileImage,
    );
  }





Map<String, dynamic> toMap() =>{
  Constant.kImageUrl:imageUrl,
  Constant.kproductPice:productPrice,
  Constant.kproductName:productName,
  Constant.kproductDesc:productDesc,
  Constant.kproductCode:productCode,
  Constant.kisOrganic:organicPercentage,
  Constant.kexperationManth:experationMonths,
Constant.kaverageRating:averageRating,
Constant.kratingCount:averageCount,
Constant.kunit:unit,
Constant.knumberOfColories:numOfcolories


};
}