import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class GetImagePicker {
  static RxString imagePath = ''.obs;
  static final ImagePicker _picker = ImagePicker();
  static Future<String> getImageSource({
    required ImageSource source,
  }) async {
    final pickedFile =
        await _picker.pickImage(source: source, imageQuality: 100);

    if (pickedFile != null) {
      print("${pickedFile.path}");
      imagePath.value = pickedFile.path;
      Get.back();
      return pickedFile.path;
    } else {
      Get.rawSnackbar(title: 'فارغه', message: 'الصوره فارغه');
      return "Try Agin";
    }
  }
}
