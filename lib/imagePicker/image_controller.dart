import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  RxString imagepath = "".obs;

  Future getImage() async {
    final ImagePicker imagepicker = ImagePicker();
    final image = await imagepicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagepath.value = image.path.toString();
    }
  }
}
