class LoginModel {
  Data? data;

  LoginModel({this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }

    return data;
  }
}

class Data {
  User? user;
  String? token;
  Abilities? abilities;
  IspDetail? ispDetail;
  String? ispLogo;
  bool? oem;

  Data(
      {this.user,
      this.token,
      this.abilities,
      this.ispDetail,
      this.ispLogo,
      this.oem});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
    abilities = json['abilities'] != null
        ? Abilities.fromJson(json['abilities'])
        : null;
    ispDetail = json['ispDetail'] != null
        ? IspDetail.fromJson(json['ispDetail'])
        : null;
    ispLogo = json['ispLogo'];
    oem = json['oem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    if (abilities != null) {
      data['abilities'] = abilities!.toJson();
    }
    if (ispDetail != null) {
      data['ispDetail'] = ispDetail!.toJson();
    }
    data['ispLogo'] = ispLogo;
    data['oem'] = oem;
    return data;
  }
}

class User {
  int? id;
  String? username;
  int? operatorId;
  int? portalLogin;
  int? planId;
  Clientfilepermission? clientfilepermission;
  List<Tr069>? tr069;
  Operator? operator;

  User(
      {this.id,
      this.username,
      this.operatorId,
      this.portalLogin,
      this.planId,
      this.clientfilepermission,
      this.tr069,
      this.operator});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    operatorId = json['operator_id'];
    portalLogin = json['portalLogin'];
    planId = json['plan_id'];
    clientfilepermission = json['clientfilepermission'] != null
        ? Clientfilepermission.fromJson(json['clientfilepermission'])
        : null;
    if (json['tr069'] != null) {
      tr069 = <Tr069>[];
      json['tr069'].forEach((v) {
        tr069!.add(Tr069.fromJson(v));
      });
    }
    operator =
        json['operator'] != null ? Operator.fromJson(json['operator']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['operator_id'] = operatorId;
    data['portalLogin'] = portalLogin;
    data['plan_id'] = planId;
    if (clientfilepermission != null) {
      data['clientfilepermission'] = clientfilepermission!.toJson();
    }
    if (tr069 != null) {
      data['tr069'] = tr069!.map((v) => v.toJson()).toList();
    }
    if (operator != null) {
      data['operator'] = operator!.toJson();
    }
    return data;
  }
}

class Clientfilepermission {
  int? id;
  int? userId;
  String? fileperm;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  Clientfilepermission(
      {this.id,
      this.userId,
      this.fileperm,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Clientfilepermission.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    fileperm = json['fileperm'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['fileperm'] = fileperm;
    data['createdBy'] = createdBy;
    data['updatedBy'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Tr069 {
  int? id;
  String? deviceId;
  String? mac;
  String? serialNumber;
  String? brandName;
  String? type;
  int? userId;
  String? username;
  int? tr069;
  Null extra;
  int? operatorId;
  String? zoneName;
  String? createdBy;
  Null updatedBy;
  String? createdAt;
  String? updatedAt;

  Tr069(
      {this.id,
      this.deviceId,
      this.mac,
      this.serialNumber,
      this.brandName,
      this.type,
      this.userId,
      this.username,
      this.tr069,
      this.extra,
      this.operatorId,
      this.zoneName,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Tr069.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    deviceId = json['deviceId'];
    mac = json['mac'];
    serialNumber = json['serialNumber'];
    brandName = json['brandName'];
    type = json['type'];
    userId = json['user_id'];
    username = json['username'];
    tr069 = json['tr069'];
    extra = json['extra'];
    operatorId = json['operator_id'];
    zoneName = json['zoneName'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['deviceId'] = deviceId;
    data['mac'] = mac;
    data['serialNumber'] = serialNumber;
    data['brandName'] = brandName;
    data['type'] = type;
    data['user_id'] = userId;
    data['username'] = username;
    data['tr069'] = tr069;
    data['extra'] = extra;
    data['operator_id'] = operatorId;
    data['zoneName'] = zoneName;
    data['createdBy'] = createdBy;
    data['updatedBy'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Operator {
  int? id;
  String? username;
  int? separateConfig;

  Operator({this.id, this.username, this.separateConfig});

  Operator.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    separateConfig = json['separateConfig'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['separateConfig'] = separateConfig;
    return data;
  }
}

class Abilities {
  bool? password;
  bool? session;
  bool? invoice;
  bool? receipt;
  bool? traffic;
  bool? sla;
  bool? dashboard;
  bool? voucher;
  bool? recharge;
  bool? rechargeList;
  bool? userDetail;
  bool? useronu;

  Abilities(
      {this.password,
      this.session,
      this.invoice,
      this.receipt,
      this.traffic,
      this.sla,
      this.dashboard,
      this.voucher,
      this.recharge,
      this.rechargeList,
      this.userDetail,
      this.useronu});

  Abilities.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    session = json['session'];
    invoice = json['invoice'];
    receipt = json['receipt'];
    traffic = json['traffic'];
    sla = json['sla'];
    dashboard = json['dashboard'];
    voucher = json['voucher'];
    recharge = json['recharge'];
    rechargeList = json['rechargeList'];
    userDetail = json['userDetail'];
    useronu = json['useronu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['password'] = password;
    data['session'] = session;
    data['invoice'] = invoice;
    data['receipt'] = receipt;
    data['traffic'] = traffic;
    data['sla'] = sla;
    data['dashboard'] = dashboard;
    data['voucher'] = voucher;
    data['recharge'] = recharge;
    data['rechargeList'] = rechargeList;
    data['userDetail'] = userDetail;
    data['useronu'] = useronu;
    return data;
  }
}

class IspDetail {
  String? ispName;
  String? ispTimezone;
  int? ispTimezoneDiff;
  String? ispCurrency;

  IspDetail(
      {this.ispName, this.ispTimezone, this.ispTimezoneDiff, this.ispCurrency});

  IspDetail.fromJson(Map<String, dynamic> json) {
    ispName = json['isp_name'];
    ispTimezone = json['isp_timezone'];
    ispTimezoneDiff = json['isp_timezone_diff'];
    ispCurrency = json['isp_currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isp_name'] = ispName;
    data['isp_timezone'] = ispTimezone;
    data['isp_timezone_diff'] = ispTimezoneDiff;
    data['isp_currency'] = ispCurrency;
    return data;
  }
}
