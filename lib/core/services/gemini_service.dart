import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/features/plant_details_ai/data/models/gemini_request_model.dart';
import 'package:meeta_a_flora/core/network/api_endpoints.dart';

@lazySingleton
class GeminiService {
  final Dio dio;

  GeminiService(this.dio);

  Future<Map<String, dynamic>> getPlantDetails(String plantName) async {
    final apiKey = dotenv.env['GEMINI_API_KEY'];

    final url = ApiEndpoints.gemini(apiKey!);

    final body = GeminiRequestModel(plantName).toJson();

    final response = await dio.post(
      url,
      options: Options(headers: {"Content-Type": "application/json"}),
      data: body,
    );

    final text = response.data['candidates'][0]['content']['parts'][0]['text'];

    return _parseToJson(text);
  }

  Map<String, dynamic> _parseToJson(String content) {
    final cleaned = content
        .replaceAll('```json', '')
        .replaceAll('```', '')
        .trim();

    final start = cleaned.indexOf('{');
    final end = cleaned.lastIndexOf('}');

    return jsonDecode(cleaned.substring(start, end + 1));
  }
}
