import 'dart:convert';
import 'dart:io';
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
}
