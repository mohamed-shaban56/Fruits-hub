import 'dart:developer';
import 'dart:io';

import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/core/utliz/services/storage_service.dart';
import 'package:path/path.dart' as p;
import 'package:supabase_flutter/supabase_flutter.dart';

class SubpaseStorageService implements StorageService {

static late Supabase  _supabase;
static Future<void>  initSupbase()async
  {
   _supabase= await Supabase.initialize(
    url: Constant.ksubapaseUrl,
    anonKey: Constant.ksubapaseKey,
  );
  }
  @override
  Future<String> uploadFile(File? file,String path) async{

try{

   String fileName=   p.basename(file!.path);
final filePath='$path/$fileName';
  await _supabase.client.storage.from(Constant.ksupabasebucket).upload(filePath, file);


 String publicUrl = _supabase.client
  .storage
  .from(Constant.ksupabasebucket)
  .getPublicUrl(filePath);

   log('✅ Public URL: $publicUrl');
  return publicUrl;
}catch (e)
{
  
  log('fild to save data in subabase $e');
  throw Exception('fild to save data in subabase $e');
}
 
  }


}