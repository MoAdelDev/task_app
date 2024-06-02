import 'package:hive_flutter/hive_flutter.dart';

class HiveManager {
  HiveManager._();
  static Future<void> init() async {
    await Hive.initFlutter();
  }
}
