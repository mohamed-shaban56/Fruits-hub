import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_input_entity.dart';
import 'package:fruitapp/features/dashbord/domain/repo/image_repo/image_repo.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:fruitapp/features/dashbord/presentation/manger/add_product/add_product_state.dart';


class AddProductCubit extends Cubit<AddProductState> {

AddProductCubit({required this.fileImageRepo,required this.productRepo}):super(AddProductIntial());
final FileImageRepo fileImageRepo;
final ProductRepo productRepo;

Future<void>addProduct(ProductInputEntity addProductEntity,)
async{
  emit(AddProductLoading());
  var imageResult =await fileImageRepo.uploudFileImage(addProductEntity.fileImage);
  imageResult.fold((f)=>emit(AddProductFailure(f.error)), (imageUrl)async{
  
    addProductEntity.imageUrl=imageUrl;

var productResult=await productRepo.addProduct(addProductEntity);
productResult.fold(
(f){
  log('step 3 in cubit fild to add product to firestore');
emit(AddProductFailure(f.error));
}
, (product)
{
    log('step 4 in cubit succcess to add product to firestore');
emit(AddProductSecces());
}
);
  
  
  




  });
}
}