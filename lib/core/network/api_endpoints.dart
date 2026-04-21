class ApiEndpoints {
  static const String baseUrl =
      "https://generativelanguage.googleapis.com/v1beta";

  static String gemini(String apiKey) =>
      "$baseUrl/models/gemini-2.5-flash:generateContent?key=$apiKey";
}
