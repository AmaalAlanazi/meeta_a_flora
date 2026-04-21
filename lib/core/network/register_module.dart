import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio();

  @lazySingleton
  ImagePicker imagePicker() => ImagePicker();
}
