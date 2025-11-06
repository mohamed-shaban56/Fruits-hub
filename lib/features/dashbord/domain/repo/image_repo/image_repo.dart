import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fruitapp/core/utliz/widgets/failure.dart';


abstract class FileImageRepo {

  Future<Either<Failure,String>>uploudFileImage(File? fileimage);
}