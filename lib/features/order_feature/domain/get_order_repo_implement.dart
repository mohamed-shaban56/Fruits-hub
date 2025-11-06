import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/Checkout/data/modles/order_model.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo.dart';

class GetOrderRepoImplement extends GetOrderRepo {
  final DatabaseService databaseService;

  GetOrderRepoImplement({required this.databaseService});

  @override
  Stream<Either<Failure, List<OrderEntity>>> getOrder() {
    try {
      final result = databaseService.streamData(path: BackEndEndpoint.orderPath);

      return result.map((streamResult) {
        List<OrderEntity> orderList = [];
        for (var e in streamResult) {
          try {
            orderList.add(OrderModel.fromjson(e).toEntity());
          } catch (err) {
            log('❌ mapping error for doc: $err');
          }
        }

        log('✅ returning ${orderList.length} orders');
        return Right<Failure, List<OrderEntity>>(orderList);
      }).handleError((error) {
        log('🔥 stream error in GetOrderRepoImplement: $error');
      });
    } catch (e) {
      log('get order repo implement: outer error is $e');
      return Stream.value(
        Left<Failure, List<OrderEntity>>(Failure(e.toString())),
      );
    }
  }
}
