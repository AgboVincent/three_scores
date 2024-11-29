




import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:three_scores_task/model/video_highlights.dart';

class ApiService {
  Future<Map<String, dynamic>> fetchHighlightsFromJson(String filename) async {
    final String response = await rootBundle.loadString('assets/json/$filename');
    return json.decode(response);
  }
}