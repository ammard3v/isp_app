import 'dart:convert';

UserDetailsModel userDetailsModelFromJson(String str) =>
    UserDetailsModel.fromJson(json.decode(str));

String userDetailsModelToJson(UserDetailsModel data) =>
    json.encode(data.toJson());

class UserDetailsModel {
  final Data? data;

  UserDetailsModel({this.data});

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      UserDetailsModel(
        data: json['data'] != null ? Data.fromJson(json['data']) : null,
      );

  Map<String, dynamic> toJson() => {
        if (data != null) 'data': data!.toJson(),
      };
}

class Data {
  final int? id;
  final String? username;
  final dynamic oldId;
  final int? planId;
  final String? planName;
  final int? changeplanId;
  final String? changeplanName;
  final int? plangroupId;
  final dynamic planGroup;
  final int? postPlan;
  final int? simUse;
  final int? expire;
  final int? fup;
  final int? fupNotify;
  final int? quota;
  final int? grace;
  final dynamic graceDate;
  final int? dataLimit;
  final int? status;
  final int? suspend;
  final int? startOnLogin;
  final int? portalLogin;
  final int? autoInvoice;
  final dynamic autoRenew;
  final String? startDate;
  final String? expiryDate;
  final dynamic taxNo;
  final String? discount;
  final dynamic planCost;
  final dynamic mac;
  final int? userType;
  final int? bandChange;
  final dynamic ottSubCode;
  final int? activeAdmin;
  final String? bill;
  final String? openingBalance;
  final int? taxable;
  final dynamic lastLogin;
  final int? operatorId;
  final String? zoneName;
  final String? createdBy;
  final String? updatedBy;
  final String? createdAt;
  final String? updatedAt;
  final Userinfo? userinfo;
  final List<dynamic>? documents;

  Data({
    this.id,
    this.username,
    this.oldId,
    this.planId,
    this.planName,
    this.changeplanId,
    this.changeplanName,
    this.plangroupId,
    this.planGroup,
    this.postPlan,
    this.simUse,
    this.expire,
    this.fup,
    this.fupNotify,
    this.quota,
    this.grace,
    this.graceDate,
    this.dataLimit,
    this.status,
    this.suspend,
    this.startOnLogin,
    this.portalLogin,
    this.autoInvoice,
    this.autoRenew,
    this.startDate,
    this.expiryDate,
    this.taxNo,
    this.discount,
    this.planCost,
    this.mac,
    this.userType,
    this.bandChange,
    this.ottSubCode,
    this.activeAdmin,
    this.bill,
    this.openingBalance,
    this.taxable,
    this.lastLogin,
    this.operatorId,
    this.zoneName,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.userinfo,
    this.documents,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'],
        username: json['username'],
        oldId: json['oldId'],
        planId: json['plan_id'],
        planName: json['planName'],
        changeplanId: json['changeplan_id'],
        changeplanName: json['changeplanName'],
        plangroupId: json['plangroup_id'],
        planGroup: json['planGroup'],
        postPlan: json['postPlan'],
        simUse: json['simUse'],
        expire: json['expire'],
        fup: json['fup'],
        fupNotify: json['fupNotify'],
        quota: json['quota'],
        grace: json['grace'],
        graceDate: json['graceDate'],
        dataLimit: json['dataLimit'],
        status: json['status'],
        suspend: json['suspend'],
        startOnLogin: json['startOnLogin'],
        portalLogin: json['portalLogin'],
        autoInvoice: json['autoInvoice'],
        autoRenew: json['autoRenew'],
        startDate: json['startDate'],
        expiryDate: json['expiryDate'],
        taxNo: json['taxNo'],
        discount: json['discount'],
        planCost: json['planCost'],
        mac: json['mac'],
        userType: json['userType'],
        bandChange: json['bandChange'],
        ottSubCode: json['ottSubCode'],
        activeAdmin: json['activeAdmin'],
        bill: json['bill'],
        openingBalance: json['openingBalance'],
        taxable: json['taxable'],
        lastLogin: json['lastLogin'],
        operatorId: json['operator_id'],
        zoneName: json['zoneName'],
        createdBy: json['createdBy'],
        updatedBy: json['updatedBy'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        userinfo: json['userinfo'] != null
            ? Userinfo.fromJson(json['userinfo'])
            : null,
        documents: json['documents'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'oldId': oldId,
        'plan_id': planId,
        'planName': planName,
        'changeplan_id': changeplanId,
        'changeplanName': changeplanName,
        'plangroup_id': plangroupId,
        'planGroup': planGroup,
        'postPlan': postPlan,
        'simUse': simUse,
        'expire': expire,
        'fup': fup,
        'fupNotify': fupNotify,
        'quota': quota,
        'grace': grace,
        'graceDate': graceDate,
        'dataLimit': dataLimit,
        'status': status,
        'suspend': suspend,
        'startOnLogin': startOnLogin,
        'portalLogin': portalLogin,
        'autoInvoice': autoInvoice,
        'autoRenew': autoRenew,
        'startDate': startDate,
        'expiryDate': expiryDate,
        'taxNo': taxNo,
        'discount': discount,
        'planCost': planCost,
        'mac': mac,
        'userType': userType,
        'bandChange': bandChange,
        'ottSubCode': ottSubCode,
        'activeAdmin': activeAdmin,
        'bill': bill,
        'openingBalance': openingBalance,
        'taxable': taxable,
        'lastLogin': lastLogin,
        'operator_id': operatorId,
        'zoneName': zoneName,
        'createdBy': createdBy,
        'updatedBy': updatedBy,
        'created_at': createdAt,
        'updated_at': updatedAt,
        if (userinfo != null) 'userinfo': userinfo!.toJson(),
        if (documents != null) 'documents': documents,
      };
}

class Userinfo {
  final int? id;
  final int? userId;
  final String? contactPerson;
  final dynamic company;
  final String? phone;
  final dynamic alternatPhone;
  final dynamic email;
  final dynamic gender;
  final dynamic dateOfBirth;
  final String? billingAddress1;
  final dynamic billingAddress2;
  final dynamic billingCity;
  final dynamic billingZip;
  final dynamic installAddress1;
  final dynamic installAddress2;
  final dynamic installCity;
  final dynamic installZip;
  final dynamic nationality;
  final dynamic kycId;
  final dynamic idProof;
  final dynamic idProofNo;
  final dynamic addressProof;
  final dynamic addressProofNo;
  final dynamic notes;
  final dynamic lat;
  final dynamic long;
  final dynamic cpeIp;
  final int? operatorId;
  final String? zoneName;
  final String? createdBy;
  final dynamic updatedBy;
  final String? createdAt;
  final String? updatedAt;

  Userinfo({
    this.id,
    this.userId,
    this.contactPerson,
    this.company,
    this.phone,
    this.alternatPhone,
    this.email,
    this.gender,
    this.dateOfBirth,
    this.billingAddress1,
    this.billingAddress2,
    this.billingCity,
    this.billingZip,
    this.installAddress1,
    this.installAddress2,
    this.installCity,
    this.installZip,
    this.nationality,
    this.kycId,
    this.idProof,
    this.idProofNo,
    this.addressProof,
    this.addressProofNo,
    this.notes,
    this.lat,
    this.long,
    this.cpeIp,
    this.operatorId,
    this.zoneName,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory Userinfo.fromJson(Map<String, dynamic> json) => Userinfo(
        id: json['id'],
        userId: json['user_id'],
        contactPerson: json['contactPerson'],
        company: json['company'],
        phone: json['phone'],
        alternatPhone: json['alternatPhone'],
        email: json['email'],
        gender: json['gender'],
        dateOfBirth: json['dateOfBirth'],
        billingAddress1: json['billingAddress1'],
        billingAddress2: json['billingAddress2'],
        billingCity: json['billingCity'],
        billingZip: json['billingZip'],
        installAddress1: json['installAddress1'],
        installAddress2: json['installAddress2'],
        installCity: json['installCity'],
        installZip: json['installZip'],
        nationality: json['nationality'],
        kycId: json['kycId'],
        idProof: json['idProof'],
        idProofNo: json['idProofNo'],
        addressProof: json['addressProof'],
        addressProofNo: json['addressProofNo'],
        notes: json['notes'],
        lat: json['lat'],
        long: json['long'],
        cpeIp: json['cpeIp'],
        operatorId: json['operator_id'],
        zoneName: json['zoneName'],
        createdBy: json['createdBy'],
        updatedBy: json['updatedBy'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'contactPerson': contactPerson,
        'company': company,
        'phone': phone,
        'alternatPhone': alternatPhone,
        'email': email,
        'gender': gender,
        'dateOfBirth': dateOfBirth,
        'billingAddress1': billingAddress1,
        'billingAddress2': billingAddress2,
        'billingCity': billingCity,
        'billingZip': billingZip,
        'installAddress1': installAddress1,
        'installAddress2': installAddress2,
        'installCity': installCity,
        'installZip': installZip,
        'nationality': nationality,
        'kycId': kycId,
        'idProof': idProof,
        'idProofNo': idProofNo,
        'addressProof': addressProof,
        'addressProofNo': addressProofNo,
        'notes': notes,
        'lat': lat,
        'long': long,
        'cpeIp': cpeIp,
        'operator_id': operatorId,
        'zoneName': zoneName,
        'createdBy': createdBy,
        'updatedBy': updatedBy,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
