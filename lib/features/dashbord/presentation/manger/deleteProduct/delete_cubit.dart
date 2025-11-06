import 'package:bloc/bloc.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'delete_state.dart';

class DeleteCubit extends Cubit<DeleteState> {

  DeleteCubit(this.productRepo) : super(DeleteInitial());
   ProductRepo productRepo;
   Future<void> deleteProduct({required String documentID})async{
    emit(state);
    var result=await productRepo.deleteProduct(documentID: documentID);
    result.fold((failure)=>emit(DeleteFialuer(failure.error)), (deleted)=>emit(DeleteSuccess()));
   }
}
