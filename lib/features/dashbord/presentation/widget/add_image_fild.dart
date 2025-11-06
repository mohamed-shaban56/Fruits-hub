import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddImageFild extends StatefulWidget {
  const AddImageFild({super.key, required this.onchange});
  final ValueChanged<File> onchange;
  @override
  State<AddImageFild> createState() => _AddImageFildState();
}

class _AddImageFildState extends State<AddImageFild> {

  File? fileImage;
bool isLoadign=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async {
        setState(() {
          isLoadign=true;
        });
        XFile? image = await pickImageFromGallary();

setState(() {
  fileImage=File(image!.path);
});

widget.onchange(fileImage!);

 setState(() {
          isLoadign=false;
        });
      },
      child: Skeletonizer(
        enabled: isLoadign,
        child: Container(
          height: 100,
          width: double.infinity,
        
        decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
        
        
          ),
          borderRadius: BorderRadius.circular(20),
        
        ),
        child:fileImage !=null ? ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.file(
            fit: BoxFit.cover,
            
            fileImage!),
        ):Icon(Icons.image_aspect_ratio_outlined),
        ),
      ),
    );
  }

  Future<XFile?> pickImageFromGallary() async {
    final ImagePicker picker = ImagePicker();
    
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }
}