import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/order_feature/domain/repos/update_order_status_repo.dart';

class UpdateOrderStatusRepoImplement extends UpdateOrderStatusRepo{
  @override
   UpdateOrderStatusRepoImplement({required this.databaseService});
  final DatabaseService databaseService;
 
  Future<Either<Failure, void>> updateOrderStatus({required String orderid, required Map<String,dynamic> status}) async{

    try{
   await  databaseService.updataData(path: BackEndEndpoint.updateOrder,data: status,documentID: orderid);
   return right(null);
    }catch (e)
    {
      return left(Failure(e.toString()));

    }

  }
}