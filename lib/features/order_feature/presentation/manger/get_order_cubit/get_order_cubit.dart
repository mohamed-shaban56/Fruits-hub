

import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo.dart';

part 'get_order_state.dart';

class GetOrderCubit extends Cubit<GetOrderState> {
    GetOrderRepo getOrderRepo;

     
  GetOrderCubit(this.getOrderRepo) : super(OrderLoadig());

Stream<List<OrderEntity>>getOrder() =>getOrderRepo.getOrder();
}
