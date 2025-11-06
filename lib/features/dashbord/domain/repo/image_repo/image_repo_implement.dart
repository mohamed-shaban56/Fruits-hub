import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/constant.dart';

import 'package:fruitapp/core/utliz/services/storage_service.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';
import 'package:fruitapp/features/dashbord/domain/repo/image_repo/image_repo.dart';


class FileImageRepoImplement implements FileImageRepo{
  StorageService storageService;
  FileImageRepoImplement(this.storageService);
 
   
  
  @override
  Future<Either<Failure, String>> uploudFileImage(File? fileimage) async{
    try{
     String imageUrl= await  storageService.uploadFile(fileimage,Constant.kpath);
return right(imageUrl);
    }catch (e){
      return left(Failure(e.toString()));
    }

  }
}