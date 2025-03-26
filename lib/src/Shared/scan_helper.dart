import 'package:flutter/services.dart';

class ZebraScanHelper {
  static const MethodChannel methodChannel = MethodChannel('com.example.css_stranbys/command');
  static const EventChannel scanChannel = EventChannel('com.example.css_stranbys/scan');

  static createProfile(String profileName) async {
    await methodChannel.invokeMethod('createDataWedgeProfile', profileName);
  }
}
