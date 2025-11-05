import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_input_entity.dart';



abstract class ProductRepo {
  Future<Either<Failure,void>>addProduct(ProductInputEntity input);
  Future<Either<Failure,List<ProductEntity>>>getProduct();
    Future<Either<Failure,List<ProductEntity>>>getBestSellingProduct();
      Future<Either<Failure,void>>deleteProduct({required String documentID});
}