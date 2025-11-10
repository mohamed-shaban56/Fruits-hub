



import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruitapp/core/utliz/back_end_endpoint.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';

class FirestoreService implements DatabaseService{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> saveData(String path,Map<String,dynamic>data,String uid)async {
try{
  await firestore.collection(path).doc(uid).set(data);
  log('add product to fire base');
}
catch(e)
{
  throw Exception('Fauild to add in FirestoreService $e');
}
  

  }
  
  @override
 Future<dynamic> getData({required String path,String? documentID, Map<String ,dynamic>? query}) async{
  try{

    if(documentID !=null)
  {
  var data = await FirebaseFirestore.instance.collection(path).doc(documentID).get();
  return data.data();
  }
  else{
     Query<Map<String, dynamic>> data =  FirebaseFirestore.instance.collection(path);
if(query !=null)
{
  if(query['orderdBy'] !=null)
{
var orderBy=query['orderdBy'];
var descending=query['decending'];
   data=    data.orderBy(orderBy,descending: descending);
}if(query['limit'] !=null)
{
  var limit=query['limit'];
 data= data.limit(limit);
}
 
}
 var result= await data.get();
return result.docs.map((e)=>e.data()).toList();

  }
  }
catch (e)
{
 throw Exception('Error while fetching data from Firebase: $e');
}
  

  }
  
@override
Future<void>deleteData(String path,String documentID)async{
  try{
await firestore.collection(path).doc(documentID).delete();
log("User Deleted");
  } catch (e)
  {
    log("Failed to delete user: $e");
  throw Exception(e);
  }

}

  @override
  Stream <List<Map<String, dynamic>>> streamData({required String path}) {
  final data =  FirebaseFirestore.instance.collection(path).snapshots();
   return data.map((snapshot)=>snapshot.docs.map((doc)=>doc.data()).toList()).handleError((error)=>log('error in querysnapshot is $error'));


  
  }
  
  @override
  Future updataData({required String path, String? documentID,required Map<String, dynamic> data})async {
    try{
  await  firestore.collection(BackEndEndpoint.updateOrder).doc(documentID).update(data);
    }catch(e)
    {
throw Exception(e);
    }

  }
  }

 
