import 'dart:convert';

SsidHostModel ssidHostModelFromJson(String str) =>
    SsidHostModel.fromJson(json.decode(str));

String ssidHostModelToJson(SsidHostModel data) => json.encode(data.toJson());

class SsidHostModel {
  Data? data;

  SsidHostModel({this.data});

  factory SsidHostModel.fromJson(Map<String, dynamic> json) => SsidHostModel(
        data: json["data"] != null ? Data.fromJson(json["data"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  Map<String, SsidItem>? ssid;
  Map<String, Host>? hosts;
  String? deviceType;

  Data({this.ssid, this.hosts, this.deviceType});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        ssid: (json["ssid"] as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(key, SsidItem.fromJson(value)),
        ),
        hosts: (json["hosts"] as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(key, Host.fromJson(value)),
        ),
        deviceType: json["deviceType"],
      );

  Map<String, dynamic> toJson() => {
        "ssid": ssid?.map((key, value) => MapEntry(key, value.toJson())),
        "hosts": hosts?.map((key, value) => MapEntry(key, value.toJson())),
        "deviceType": deviceType,
      };
}

class SsidItem {
  int? key;
  String? ssid;
  bool? enable;
  bool? status;
  String? beaconType;

  SsidItem({
    this.key,
    this.ssid,
    this.enable,
    this.status,
    this.beaconType,
  });

  factory SsidItem.fromJson(Map<String, dynamic> json) => SsidItem(
        key: json["key"],
        ssid: json["SSID"],
        enable: json["enable"],
        status: json["status"],
        beaconType: json["BeaconType"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "SSID": ssid,
        "enable": enable,
        "status": status,
        "BeaconType": beaconType,
      };
}

class Host {
  String? hostName;
  String? ipAddress;
  String? macAddress;

  Host({
    this.hostName,
    this.ipAddress,
    this.macAddress,
  });

  factory Host.fromJson(Map<String, dynamic> json) => Host(
        hostName: json["HostName"],
        ipAddress: json["IPAddress"],
        macAddress: json["MACAddress"],
      );

  Map<String, dynamic> toJson() => {
        "HostName": hostName,
        "IPAddress": ipAddress,
        "MACAddress": macAddress,
      };
}
