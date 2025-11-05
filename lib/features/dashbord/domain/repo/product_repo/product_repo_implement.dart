import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/dashbord/data/model/product_input_model.dart';
import 'package:fruitapp/features/dashbord/data/model/product_model.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_input_entity.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';

class ProductRepoImplement implements ProductRepo {
  DatabaseService databaseService;
  ProductRepoImplement(this.databaseService);
  @override
  Future<Either<Failure, void>> addProduct(
    ProductInputEntity addProductEntity,
  ) async {
    try {
      await databaseService.saveData(
        BackEndEndpoint.productPath,
        ProductInputModel.fromEntity(addProductEntity).toMap(),
        addProductEntity.productCode,
      );
      return right(null);
    } catch (e) {
      log('product repo implemet error $e');
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProduct() async {
    try {
      var jsonData =
          await databaseService.getData(path: BackEndEndpoint.productPath)   as List<Map<String, dynamic>>;
      
      List<ProductEntity> products = jsonData
          .map((e) => ProductModel.fromjson(e).toEntity())
          .toList();

      return right(products);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProduct() async {
    try {
      var jsonData =
          await databaseService.getData(
                path: BackEndEndpoint.productPath,
                // query: {
                //   'orderdBy': 'sellingCount',
                //   'limit': 10,
                //   'decending': true,
                // },
                
              )
              as List<Map<String, dynamic>>;

      List<ProductEntity> products = jsonData
          .map((e) => ProductModel.fromjson(e).toEntity())
          .toList();

      return right(products);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteProduct({
    required String documentID,
  }) async {
    try {
      await databaseService.deleteData(BackEndEndpoint.productPath, documentID);
      return right(null);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
