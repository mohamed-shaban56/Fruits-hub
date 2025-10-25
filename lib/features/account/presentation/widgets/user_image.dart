import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:image_picker/image_picker.dart';



class UserImage extends StatefulWidget {
  const UserImage({super.key});

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
     final ImagePicker picker = ImagePicker();
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Stack(
          clipBehavior: Clip.none,
          children: [

            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.amber,
              backgroundImage:imageFile !=null? FileImage(imageFile!):AssetImage(Assets.assetsImagesUserImage),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: -45,
              child: GestureDetector(
                onTap: () async{

             final XFile? image = await picker.pickImage(source: ImageSource.gallery);
               setState(() {
                    imageFile=File(image!.path);
                    });

                },
                child: Image.asset(Assets.cameraImage))
            )
          ],
          
        );
}
}