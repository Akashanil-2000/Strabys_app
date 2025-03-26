import 'package:flutter/services.dart';

class ImageModel {
  String name;
  String id;
  Uint8List bytes;

  ImageModel({required this.name, required this.id, required this.bytes});
}
