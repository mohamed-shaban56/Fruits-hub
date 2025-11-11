

import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';

import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class ProductModel extends HiveObject{
 @HiveField(0)
  final int sellingCount;
  @HiveField(1)
  final double productPrice;
  @HiveField(2)
final String productName;
@HiveField(3)
final String productCode;
@HiveField(4)
final String productDesc;
@HiveField(5)
 String imageUrl;
 @HiveField(6)
final int experationMonths;
@HiveField(7)
final int numOfcolories;
@HiveField(8)
final int organicPercentage;
@HiveField(9)
final num averageRating;
@HiveField(10)
final num averageCount;
@HiveField(11)
final int unit;
ProductModel({required  this.experationMonths,required this.numOfcolories,required this.organicPercentage,required this.averageRating,required this.averageCount,required this.unit,required this.productPrice, required this.productName, required this.productCode, required this.productDesc,required this.imageUrl,this.sellingCount=0  });

  ProductEntity toEntity() {
    return ProductEntity(
      experationMonths: experationMonths,
      numOfcolories: numOfcolories,
      organicPercentage: organicPercentage,
      averageRating: averageRating,
      averageCount: averageCount,
      unit: unit,
      productPrice: productPrice,
      productName: productName,
      productCode: productCode,
      productDesc: productDesc,
      imageUrl: imageUrl,
    );
  }


factory ProductModel.fromjson(Map<String,dynamic>json)
{
  return ProductModel(
    experationMonths: json[Constant.kexperationManth], 
  numOfcolories: json[Constant.knumberOfColories], 
  organicPercentage: json[Constant.kisOrganic],
   averageRating: json[Constant.kaverageRating], 
   averageCount: json[Constant.kratingCount],
    unit: json[Constant.kunit], 
    productPrice: (json[Constant.kproductPice]is String)?double.parse(json[Constant.kproductPice]):json[Constant.kproductPice],
     productName: json[Constant.kproductName],
      productCode: json[Constant.kproductCode],
       productDesc: json[Constant.kproductDesc],
        imageUrl: json[Constant.kImageUrl],
        );
}
factory ProductModel.fromEntity(ProductEntity productEntity)
{
  return ProductModel(
    productPrice: productEntity.productPrice, 
    productName: productEntity.productName,
     productCode: productEntity.productCode, 
     productDesc: productEntity.productDesc,
     imageUrl: productEntity.imageUrl,
     
       experationMonths: productEntity.experationMonths,
       numOfcolories: productEntity.numOfcolories,
        organicPercentage: productEntity.organicPercentage,
         averageRating: productEntity.averageRating, 
         averageCount: productEntity.averageCount,
          unit: productEntity.unit,
      
      );
}



}