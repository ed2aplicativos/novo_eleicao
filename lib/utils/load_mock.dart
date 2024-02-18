import 'dart:convert';

import 'package:flutter/services.dart';

class LoadMock {
  static Future load(String path) async {
    var res = await rootBundle.loadString('assets/$path');
    return jsonDecode(res);
  }
}
