import 'dart:convert';

ComplaintListModel complaintListModelFromJson(String str) =>
    ComplaintListModel.fromJson(json.decode(str));
String complaintListModelToJson(ComplaintListModel data) =>
    json.encode(data.toJson());

class ComplaintListModel {
  ComplaintListModel({
    List<Data>? data,
  }) {
    _data = data;
  }

  ComplaintListModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;
  ComplaintListModel copyWith({
    List<Data>? data,
  }) =>
      ComplaintListModel(
        data: data ?? _data,
      );
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    num? slaNo,
    String? slaTitle,
    String? slaMsg,
    num? userId,
    String? username,
    String? status,
    String? statusBy,
    String? statusMsg,
    String? statusDate,
    String? createdBy,
    String? createdAt,
    num? id,
    String? zoneName,
    dynamic resolveTime,
  }) {
    _slaNo = slaNo;
    _slaTitle = slaTitle;
    _slaMsg = slaMsg;
    _userId = userId;
    _username = username;
    _status = status;
    _statusBy = statusBy;
    _statusMsg = statusMsg;
    _statusDate = statusDate;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _id = id;
    _zoneName = zoneName;
    _resolveTime = resolveTime;
  }

  Data.fromJson(dynamic json) {
    _slaNo = json['slaNo'];
    _slaTitle = json['slaTitle'];
    _slaMsg = json['slaMsg'];
    _userId = json['user_id'];
    _username = json['username'];
    _status = json['status'];
    _statusBy = json['statusBy'];
    _statusMsg = json['statusMsg'];
    _statusDate = json['statusDate'];
    _createdBy = json['createdBy'];
    _createdAt = json['created_at'];
    _id = json['id'];
    _zoneName = json['zoneName'];
    _resolveTime = json['resolveTime'];
  }
  num? _slaNo;
  String? _slaTitle;
  String? _slaMsg;
  num? _userId;
  String? _username;
  String? _status;
  String? _statusBy;
  String? _statusMsg;
  String? _statusDate;
  String? _createdBy;
  String? _createdAt;
  num? _id;
  String? _zoneName;
  dynamic _resolveTime;
  Data copyWith({
    num? slaNo,
    String? slaTitle,
    String? slaMsg,
    num? userId,
    String? username,
    String? status,
    String? statusBy,
    String? statusMsg,
    String? statusDate,
    String? createdBy,
    String? createdAt,
    num? id,
    String? zoneName,
    dynamic resolveTime,
  }) =>
      Data(
        slaNo: slaNo ?? _slaNo,
        slaTitle: slaTitle ?? _slaTitle,
        slaMsg: slaMsg ?? _slaMsg,
        userId: userId ?? _userId,
        username: username ?? _username,
        status: status ?? _status,
        statusBy: statusBy ?? _statusBy,
        statusMsg: statusMsg ?? _statusMsg,
        statusDate: statusDate ?? _statusDate,
        createdBy: createdBy ?? _createdBy,
        createdAt: createdAt ?? _createdAt,
        id: id ?? _id,
        zoneName: zoneName ?? _zoneName,
        resolveTime: resolveTime ?? _resolveTime,
      );
  num? get slaNo => _slaNo;
  String? get slaTitle => _slaTitle;
  String? get slaMsg => _slaMsg;
  num? get userId => _userId;
  String? get username => _username;
  String? get status => _status;
  String? get statusBy => _statusBy;
  String? get statusMsg => _statusMsg;
  String? get statusDate => _statusDate;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  num? get id => _id;
  String? get zoneName => _zoneName;
  dynamic get resolveTime => _resolveTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slaNo'] = _slaNo;
    map['slaTitle'] = _slaTitle;
    map['slaMsg'] = _slaMsg;
    map['user_id'] = _userId;
    map['username'] = _username;
    map['status'] = _status;
    map['statusBy'] = _statusBy;
    map['statusMsg'] = _statusMsg;
    map['statusDate'] = _statusDate;
    map['createdBy'] = _createdBy;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    map['zoneName'] = _zoneName;
    map['resolveTime'] = _resolveTime;
    return map;
  }
}
