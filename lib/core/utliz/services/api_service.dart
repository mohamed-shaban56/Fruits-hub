import 'package:dio/dio.dart';

class ApiService {
Dio dio;
ApiService(this.dio);
 Future<Map<String,dynamic>> post({required String path  ,required  Map<String, dynamic> data,Map<String, dynamic>? headers })async{
   Response response= await  dio.post(path,data:data ,options: Options(
    headers: headers
  ));
  if(response.statusCode==200)
  {
    return response.data;
  }
  else{
    throw Exception('error when fetch secretkey');
  }
}

}