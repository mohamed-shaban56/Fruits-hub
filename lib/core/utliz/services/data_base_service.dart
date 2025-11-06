

abstract class DatabaseService{
  Future<void>saveData(String path,Map<String,dynamic>data,String uid);
  Future<void>deleteData(String path,String documentID);
  Future< dynamic> getData({required String path,String? documentID, Map<String ,dynamic>? query});
  Future< dynamic> updataData({required String path,String? documentID,required Map<String ,dynamic>data});
  Stream<List<Map<String, dynamic>>> streamData({required String path});
}