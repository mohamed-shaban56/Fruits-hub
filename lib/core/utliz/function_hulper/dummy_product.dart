import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';


final dummyroduct = ProductEntity(
  productPrice: 00.00,
  productName: 'Loading...',
  productCode: '0000',
  productDesc: 'Loading description...',
  experationMonths: 0,
  numOfcolories: 0,
  organicPercentage: 100,
  averageRating: 0,
  averageCount: 0,
  unit: 0,
  imageUrl: '', // تقدر تخليها null أو صورة رمادية مؤقتًا
);
List<ProductEntity>getDummyProduct()=>[
  dummyroduct,
  dummyroduct,
  dummyroduct,
  dummyroduct,
  dummyroduct,
  dummyroduct
];