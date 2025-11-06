import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/order_feature/domain/repos/update_order_status_repo.dart';

part 'update_order_state.dart';

class UpdateOrderCubit extends Cubit<UpdateOrderState> {
  UpdateOrderCubit({required this.updateorderRepo}) : super(UpdateOrderInitial());
  UpdateOrderStatusRepo updateorderRepo;
 void updateOrder({required String orderId,required  Map<String,dynamic>status})async
 {
  emit(UpdateOrderLoading());
  var result=await updateorderRepo.updateOrderStatus(orderid: orderId, status: status);
  result.fold((failure){
        log('update order status has been faild error is:${failure.error}');
    emit(UpdateOrderFailure(failure.error));
  }
    , (orderUpdated){
    log('update order status has been succesful');
    emit(UpdateOrderSuccess());
  });

 }
}
