import 'dart:convert';

ResetPasswordModel resetPasswordModelFromJson(String str) =>
    ResetPasswordModel.fromJson(json.decode(str));
String resetPasswordModelToJson(ResetPasswordModel data) =>
    json.encode(data.toJson());

class ResetPasswordModel {
  ResetPasswordModel({
    String? message,
  }) {
    _message = message;
  }

  ResetPasswordModel.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
  ResetPasswordModel copyWith({
    String? message,
  }) =>
      ResetPasswordModel(
        message: message ?? _message,
      );
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }
}
