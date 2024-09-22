import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class ConvertAndSaveImage {
  static Future<String> convertAndSaveImage(String base64Image) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/image.png';

    try {
      List<int> imageBytes = base64.decode(base64Image);

      File imageFile = File(filePath);
      await imageFile.writeAsBytes(imageBytes);
      return filePath;
    } catch (e) {
      print('Error converting and saving image: $e');
      return '';
    }
  }

  static Future<String> convertImageToBase64(String image) async {
    ByteData bytes = await rootBundle.load(image);
    var buffer = bytes.buffer;
    var m = base64.encode(Uint8List.view(buffer));
    return m;
  }

  static Future<String> convertImageWithName(
      String base64Image, String itemName) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$itemName.png';

    try {
      List<int> imageBytes = base64.decode(base64Image);

      File imageFile = File(filePath);
      await imageFile.writeAsBytes(imageBytes);
      return filePath;
    } catch (e) {
      print('Error converting and saving image: $e');
      return '';
    }
  }

  static Uint8List base64String(String image) {
    return base64Decode(image);
  }
}
