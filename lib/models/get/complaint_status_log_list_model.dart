import 'dart:convert';

ComplaintStatusLogListModel complaintStatusLogListModelFromJson(String str) =>
    ComplaintStatusLogListModel.fromJson(json.decode(str));
String complaintStatusLogListModelToJson(ComplaintStatusLogListModel data) =>
    json.encode(data.toJson());

class ComplaintStatusLogListModel {
  ComplaintStatusLogListModel({
    Data? data,
  }) {
    _data = data;
  }

  ComplaintStatusLogListModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? _data;
  ComplaintStatusLogListModel copyWith({
    Data? data,
  }) =>
      ComplaintStatusLogListModel(
        data: data ?? _data,
      );
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
    num? id,
    num? slaNo,
    num? userId,
    String? username,
    String? slaTitle,
    String? slaMsg,
    String? status,
    String? statusBy,
    String? statusMsg,
    String? statusDate,
    dynamic assignOperatorId,
    dynamic resolveTime,
    num? operatorId,
    String? zoneName,
    num? oldId,
    String? createdBy,
    dynamic updatedBy,
    String? createdAt,
    String? updatedAt,
    List<Slastatus>? slastatus,
  }) {
    _id = id;
    _slaNo = slaNo;
    _userId = userId;
    _username = username;
    _slaTitle = slaTitle;
    _slaMsg = slaMsg;
    _status = status;
    _statusBy = statusBy;
    _statusMsg = statusMsg;
    _statusDate = statusDate;
    _assignOperatorId = assignOperatorId;
    _resolveTime = resolveTime;
    _operatorId = operatorId;
    _zoneName = zoneName;
    _oldId = oldId;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _slastatus = slastatus;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _slaNo = json['slaNo'];
    _userId = json['user_id'];
    _username = json['username'];
    _slaTitle = json['slaTitle'];
    _slaMsg = json['slaMsg'];
    _status = json['status'];
    _statusBy = json['statusBy'];
    _statusMsg = json['statusMsg'];
    _statusDate = json['statusDate'];
    _assignOperatorId = json['assignOperator_id'];
    _resolveTime = json['resolveTime'];
    _operatorId = json['operator_id'];
    _zoneName = json['zoneName'];
    _oldId = json['oldId'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['slastatus'] != null) {
      _slastatus = [];
      json['slastatus'].forEach((v) {
        _slastatus?.add(Slastatus.fromJson(v));
      });
    }
  }
  num? _id;
  num? _slaNo;
  num? _userId;
  String? _username;
  String? _slaTitle;
  String? _slaMsg;
  String? _status;
  String? _statusBy;
  String? _statusMsg;
  String? _statusDate;
  dynamic _assignOperatorId;
  dynamic _resolveTime;
  num? _operatorId;
  String? _zoneName;
  num? _oldId;
  String? _createdBy;
  dynamic _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  List<Slastatus>? _slastatus;
  Data copyWith({
    num? id,
    num? slaNo,
    num? userId,
    String? username,
    String? slaTitle,
    String? slaMsg,
    String? status,
    String? statusBy,
    String? statusMsg,
    String? statusDate,
    dynamic assignOperatorId,
    dynamic resolveTime,
    num? operatorId,
    String? zoneName,
    num? oldId,
    String? createdBy,
    dynamic updatedBy,
    String? createdAt,
    String? updatedAt,
    List<Slastatus>? slastatus,
  }) =>
      Data(
        id: id ?? _id,
        slaNo: slaNo ?? _slaNo,
        userId: userId ?? _userId,
        username: username ?? _username,
        slaTitle: slaTitle ?? _slaTitle,
        slaMsg: slaMsg ?? _slaMsg,
        status: status ?? _status,
        statusBy: statusBy ?? _statusBy,
        statusMsg: statusMsg ?? _statusMsg,
        statusDate: statusDate ?? _statusDate,
        assignOperatorId: assignOperatorId ?? _assignOperatorId,
        resolveTime: resolveTime ?? _resolveTime,
        operatorId: operatorId ?? _operatorId,
        zoneName: zoneName ?? _zoneName,
        oldId: oldId ?? _oldId,
        createdBy: createdBy ?? _createdBy,
        updatedBy: updatedBy ?? _updatedBy,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        slastatus: slastatus ?? _slastatus,
      );
  num? get id => _id;
  num? get slaNo => _slaNo;
  num? get userId => _userId;
  String? get username => _username;
  String? get slaTitle => _slaTitle;
  String? get slaMsg => _slaMsg;
  String? get status => _status;
  String? get statusBy => _statusBy;
  String? get statusMsg => _statusMsg;
  String? get statusDate => _statusDate;
  dynamic get assignOperatorId => _assignOperatorId;
  dynamic get resolveTime => _resolveTime;
  num? get operatorId => _operatorId;
  String? get zoneName => _zoneName;
  num? get oldId => _oldId;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<Slastatus>? get slastatus => _slastatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['slaNo'] = _slaNo;
    map['user_id'] = _userId;
    map['username'] = _username;
    map['slaTitle'] = _slaTitle;
    map['slaMsg'] = _slaMsg;
    map['status'] = _status;
    map['statusBy'] = _statusBy;
    map['statusMsg'] = _statusMsg;
    map['statusDate'] = _statusDate;
    map['assignOperator_id'] = _assignOperatorId;
    map['resolveTime'] = _resolveTime;
    map['operator_id'] = _operatorId;
    map['zoneName'] = _zoneName;
    map['oldId'] = _oldId;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_slastatus != null) {
      map['slastatus'] = _slastatus?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Slastatus slastatusFromJson(String str) => Slastatus.fromJson(json.decode(str));
String slastatusToJson(Slastatus data) => json.encode(data.toJson());

class Slastatus {
  Slastatus({
    num? id,
    num? slaId,
    String? status,
    String? statusBy,
    String? statusMsg,
    String? statusDate,
    String? createdBy,
    dynamic updatedBy,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _slaId = slaId;
    _status = status;
    _statusBy = statusBy;
    _statusMsg = statusMsg;
    _statusDate = statusDate;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Slastatus.fromJson(dynamic json) {
    _id = json['id'];
    _slaId = json['sla_id'];
    _status = json['status'];
    _statusBy = json['statusBy'];
    _statusMsg = json['statusMsg'];
    _statusDate = json['statusDate'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _slaId;
  String? _status;
  String? _statusBy;
  String? _statusMsg;
  String? _statusDate;
  String? _createdBy;
  dynamic _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  Slastatus copyWith({
    num? id,
    num? slaId,
    String? status,
    String? statusBy,
    String? statusMsg,
    String? statusDate,
    String? createdBy,
    dynamic updatedBy,
    String? createdAt,
    String? updatedAt,
  }) =>
      Slastatus(
        id: id ?? _id,
        slaId: slaId ?? _slaId,
        status: status ?? _status,
        statusBy: statusBy ?? _statusBy,
        statusMsg: statusMsg ?? _statusMsg,
        statusDate: statusDate ?? _statusDate,
        createdBy: createdBy ?? _createdBy,
        updatedBy: updatedBy ?? _updatedBy,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  num? get slaId => _slaId;
  String? get status => _status;
  String? get statusBy => _statusBy;
  String? get statusMsg => _statusMsg;
  String? get statusDate => _statusDate;
  String? get createdBy => _createdBy;
  dynamic get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['sla_id'] = _slaId;
    map['status'] = _status;
    map['statusBy'] = _statusBy;
    map['statusMsg'] = _statusMsg;
    map['statusDate'] = _statusDate;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
