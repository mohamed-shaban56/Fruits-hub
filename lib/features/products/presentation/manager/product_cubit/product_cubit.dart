import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.productRepo}) : super(ProductInitial());
  final ProductRepo productRepo;



  Future<void> getProducts([String? filterProductByName])async
  {
    emit(ProductLoading());
    var result=await productRepo.getProduct();
    result.fold((failure){
      log('error in step 3 in product cubit ${failure.error}');
           emit(ProductFailure(failure.error));
    },
 
    (product){
      log('all product length is ${product.length}=================================');
      if(filterProductByName!=null)
      {
        List<ProductEntity> filterProduct=product.where((e)=>e.productName.startsWith(filterProductByName)).toList();
        emit(ProductSuccess(filterProduct));
      }
      else{
        
       emit(ProductSuccess(product));
      }

    });
     
   
  }
  
  @override
  void onChange(Change<ProductState> change) {
    
    super.onChange(change);
    log(change.toString());
  }
}
