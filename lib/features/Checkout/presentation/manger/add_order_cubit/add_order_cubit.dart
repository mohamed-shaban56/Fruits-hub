

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/domain/repos/orders/order_repo.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.orderRepo) : super(AddOrderInitial());
  OrderRepo orderRepo;
  Future<void> addOrder(OrderInputEntity orderEntity)async
  {
    emit(AddOrderLoading());
  var  result=await orderRepo.addOrder(orderEntity);
  result.fold((failure){
   
    emit(AddOrderFailure(failure.error));
     log(" error in add order cubit error is :${failure.error}");
    }, (added)=>emit(AddOrderSuccess()));
  }
}
