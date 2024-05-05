class ErrorModel {
  final int statusCode;
  final String message;

  ErrorModel({required this.statusCode, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(message: json["msg"], statusCode: json["status_code"]);
  }
}
