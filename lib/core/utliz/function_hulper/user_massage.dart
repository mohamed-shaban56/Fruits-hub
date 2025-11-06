
import 'package:flutter/material.dart';

void  userMessege({required BuildContext context,required String errorMessege}){
          ScaffoldMessenger.of(context).showSnackBar(
            
            SnackBar(
              duration: Duration(seconds: 1),
              content: Text(errorMessege)));
}