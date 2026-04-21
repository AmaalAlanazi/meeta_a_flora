class GeminiRequestModel {
  final String plantName;

  GeminiRequestModel(this.plantName);

  Map<String, dynamic> toJson() {
    return {
      "contents": [
        {
          "role": "user",
          "parts": [
            {
              "text":
                  """
Return ONLY valid JSON:

{
  "watering": "",
  "sunlight": "",
  "tips": ""
}

Plant: $plantName
""",
            },
          ],
        },
      ],
    };
  }
}
