import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



// for picking up image from gallery
pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: source);
  if (file != null) {
    return await file.readAsBytes();
  }
}






// import 'package:file_picker/file_picker.dart';

// for picking up image from file system
// Future<List<int>?> pickImage() async {
//   final result = await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions: ['jpg', 'jpeg', 'png'], // Add more extensions if needed
//   );
  
//   if (result != null) {
//     List<int>? bytes = result.files.single.bytes;
//     return bytes;
//   }
//   return null;
// }

// for displaying snackbars
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}