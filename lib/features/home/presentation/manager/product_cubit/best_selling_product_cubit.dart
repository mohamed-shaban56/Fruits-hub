import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'best_selling_product_state.dart';

class BestSellingProductCubit extends Cubit<BestSellingProductState> {
  BestSellingProductCubit({required this.productRepo}) : super(BestSellingProductInitial());
  final ProductRepo productRepo; 



  Future<void> getBestSellingProducts([String? filterProductByName])async
  {
    emit(BestSellingProductLoading());
    var result=await productRepo.getBestSellingProduct();
    result.fold((failure){
      log('error in step 3 in besetselling product cubit ${failure.error}');
           emit(BestSellingProductFailure(failure.error));
    },
 
    (product){
      if(filterProductByName!=null)
      {
        List<ProductEntity> filterProduct=product.where((e)=>e.productName.startsWith(filterProductByName)).toList();
        emit(BestSellingProductSuccess(filterProduct));
      }
      else{
        log('all product success in fetsh data ${product.length}');
       emit(BestSellingProductSuccess(product));
      }

    });
     
   
  }
  
  @override
  void onChange(Change<BestSellingProductState> change) {
    
    super.onChange(change);
    log(change.toString());
  }
}
