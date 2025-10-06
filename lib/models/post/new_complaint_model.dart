import 'dart:convert';

NewComplaintModel newComplaintModelFromJson(String str) =>
    NewComplaintModel.fromJson(json.decode(str));
String newComplaintModelToJson(NewComplaintModel data) =>
    json.encode(data.toJson());

class NewComplaintModel {
  NewComplaintModel({
    String? message,
    Data? data,
  }) {
    _message = message;
    _data = data;
  }

  NewComplaintModel.fromJson(dynamic json) {
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _message;
  Data? _data;
  NewComplaintModel copyWith({
    String? message,
    Data? data,
  }) =>
      NewComplaintModel(
        message: message ?? _message,
        data: data ?? _data,
      );
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    num? slano,
  }) {
    _slano = slano;
  }

  Data.fromJson(dynamic json) {
    _slano = json['SLANO'];
  }
  num? _slano;
  Data copyWith({
    num? slano,
  }) =>
      Data(
        slano: slano ?? _slano,
      );
  num? get slano => _slano;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['SLANO'] = _slano;
    return map;
  }
}
