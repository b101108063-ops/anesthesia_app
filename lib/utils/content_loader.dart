import 'package:flutter/services.dart';

class ContentLoader {
  static Future<String> loadChapter(String filename) async {
    try {
      final content = await rootBundle.loadString('assets/$filename');
      return content;
    } catch (e) {
      return '# 載入失敗\n\n無法載入 $filename\n\n錯誤: $e';
    }
  }
}
