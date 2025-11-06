import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo.dart';

part 'get_order_state.dart';

class GetOrderCubit extends Cubit<GetOrderState> {
    GetOrderRepo getOrderRepo;

  StreamSubscription? _streamSubscription;
  GetOrderCubit(this.getOrderRepo) : super(OrderLoadig()){
_streamSubscription = getOrderRepo.getOrder().listen((result) {
      result.fold((failure) {
        emit(OrderFailure(failure.error));
        log('faild in step2 in getOrderCubit');
      }, (order) {
        log('success to get order data ${order[0]}');
        emit(OrderSuccess(order));
      });
    });
  }

  @override
  Future<void> close() {
   
    _streamSubscription?.cancel();
    log('🧹 Stream subscription cancelled');
    return super.close();
  }
}
