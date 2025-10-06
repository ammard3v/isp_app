import 'dart:convert';

DashboardModel dashboardModelFromJson(String str) =>
    DashboardModel.fromJson(json.decode(str));
String dashboardModelToJson(DashboardModel data) => json.encode(data.toJson());

class DashboardModel {
  DashboardModel({
    Data? data,
  }) {
    _data = data;
  }

  DashboardModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? _data;
  DashboardModel copyWith({
    Data? data,
  }) =>
      DashboardModel(
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
    String? username,
    dynamic oldId,
    num? planId,
    String? planName,
    num? changeplanId,
    String? changeplanName,
    num? plangroupId,
    dynamic planGroup,
    num? postPlan,
    num? simUse,
    num? expire,
    num? fup,
    num? fupNotify,
    num? quota,
    num? grace,
    dynamic graceDate,
    num? dataLimit,
    num? status,
    num? suspend,
    num? startOnLogin,
    num? portalLogin,
    num? autoInvoice,
    dynamic autoRenew,
    String? startDate,
    String? expiryDate,
    dynamic taxNo,
    String? discount,
    dynamic planCost,
    dynamic mac,
    num? userType,
    num? bandChange,
    dynamic ottSubCode,
    num? activeAdmin,
    String? bill,
    String? openingBalance,
    num? taxable,
    dynamic lastLogin,
    num? operatorId,
    String? zoneName,
    String? createdBy,
    String? updatedBy,
    String? createdAt,
    String? updatedAt,
    UsedData? usedData,
    LastConnection? lastConnection,
    CurrentRecharge? currentRecharge,
  }) {
    _id = id;
    _username = username;
    _oldId = oldId;
    _planId = planId;
    _planName = planName;
    _changeplanId = changeplanId;
    _changeplanName = changeplanName;
    _plangroupId = plangroupId;
    _planGroup = planGroup;
    _postPlan = postPlan;
    _simUse = simUse;
    _expire = expire;
    _fup = fup;
    _fupNotify = fupNotify;
    _quota = quota;
    _grace = grace;
    _graceDate = graceDate;
    _dataLimit = dataLimit;
    _status = status;
    _suspend = suspend;
    _startOnLogin = startOnLogin;
    _portalLogin = portalLogin;
    _autoInvoice = autoInvoice;
    _autoRenew = autoRenew;
    _startDate = startDate;
    _expiryDate = expiryDate;
    _taxNo = taxNo;
    _discount = discount;
    _planCost = planCost;
    _mac = mac;
    _userType = userType;
    _bandChange = bandChange;
    _ottSubCode = ottSubCode;
    _activeAdmin = activeAdmin;
    _bill = bill;
    _openingBalance = openingBalance;
    _taxable = taxable;
    _lastLogin = lastLogin;
    _operatorId = operatorId;
    _zoneName = zoneName;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _usedData = usedData;
    _lastConnection = lastConnection;
    _currentRecharge = currentRecharge;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _oldId = json['oldId'];
    _planId = json['plan_id'];
    _planName = json['planName'];
    _changeplanId = json['changeplan_id'];
    _changeplanName = json['changeplanName'];
    _plangroupId = json['plangroup_id'];
    _planGroup = json['planGroup'];
    _postPlan = json['postPlan'];
    _simUse = json['simUse'];
    _expire = json['expire'];
    _fup = json['fup'];
    _fupNotify = json['fupNotify'];
    _quota = json['quota'];
    _grace = json['grace'];
    _graceDate = json['graceDate'];
    _dataLimit = json['dataLimit'];
    _status = json['status'];
    _suspend = json['suspend'];
    _startOnLogin = json['startOnLogin'];
    _portalLogin = json['portalLogin'];
    _autoInvoice = json['autoInvoice'];
    _autoRenew = json['autoRenew'];
    _startDate = json['startDate'];
    _expiryDate = json['expiryDate'];
    _taxNo = json['taxNo'];
    _discount = json['discount'];
    _planCost = json['planCost'];
    _mac = json['mac'];
    _userType = json['userType'];
    _bandChange = json['bandChange'];
    _ottSubCode = json['ottSubCode'];
    _activeAdmin = json['activeAdmin'];
    _bill = json['bill'];
    _openingBalance = json['openingBalance'];
    _taxable = json['taxable'];
    _lastLogin = json['lastLogin'];
    _operatorId = json['operator_id'];
    _zoneName = json['zoneName'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _usedData =
        json['usedData'] != null ? UsedData.fromJson(json['usedData']) : null;
    _lastConnection = json['lastConnection'] != null
        ? LastConnection.fromJson(json['lastConnection'])
        : null;
    _currentRecharge = json['current_recharge'] != null
        ? CurrentRecharge.fromJson(json['current_recharge'])
        : null;
  }
  num? _id;
  String? _username;
  dynamic _oldId;
  num? _planId;
  String? _planName;
  num? _changeplanId;
  String? _changeplanName;
  num? _plangroupId;
  dynamic _planGroup;
  num? _postPlan;
  num? _simUse;
  num? _expire;
  num? _fup;
  num? _fupNotify;
  num? _quota;
  num? _grace;
  dynamic _graceDate;
  num? _dataLimit;
  num? _status;
  num? _suspend;
  num? _startOnLogin;
  num? _portalLogin;
  num? _autoInvoice;
  dynamic _autoRenew;
  String? _startDate;
  String? _expiryDate;
  dynamic _taxNo;
  String? _discount;
  dynamic _planCost;
  dynamic _mac;
  num? _userType;
  num? _bandChange;
  dynamic _ottSubCode;
  num? _activeAdmin;
  String? _bill;
  String? _openingBalance;
  num? _taxable;
  dynamic _lastLogin;
  num? _operatorId;
  String? _zoneName;
  String? _createdBy;
  String? _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  UsedData? _usedData;
  LastConnection? _lastConnection;
  CurrentRecharge? _currentRecharge;
  Data copyWith({
    num? id,
    String? username,
    dynamic oldId,
    num? planId,
    String? planName,
    num? changeplanId,
    String? changeplanName,
    num? plangroupId,
    dynamic planGroup,
    num? postPlan,
    num? simUse,
    num? expire,
    num? fup,
    num? fupNotify,
    num? quota,
    num? grace,
    dynamic graceDate,
    num? dataLimit,
    num? status,
    num? suspend,
    num? startOnLogin,
    num? portalLogin,
    num? autoInvoice,
    dynamic autoRenew,
    String? startDate,
    String? expiryDate,
    dynamic taxNo,
    String? discount,
    dynamic planCost,
    dynamic mac,
    num? userType,
    num? bandChange,
    dynamic ottSubCode,
    num? activeAdmin,
    String? bill,
    String? openingBalance,
    num? taxable,
    dynamic lastLogin,
    num? operatorId,
    String? zoneName,
    String? createdBy,
    String? updatedBy,
    String? createdAt,
    String? updatedAt,
    UsedData? usedData,
    LastConnection? lastConnection,
    CurrentRecharge? currentRecharge,
  }) =>
      Data(
        id: id ?? _id,
        username: username ?? _username,
        oldId: oldId ?? _oldId,
        planId: planId ?? _planId,
        planName: planName ?? _planName,
        changeplanId: changeplanId ?? _changeplanId,
        changeplanName: changeplanName ?? _changeplanName,
        plangroupId: plangroupId ?? _plangroupId,
        planGroup: planGroup ?? _planGroup,
        postPlan: postPlan ?? _postPlan,
        simUse: simUse ?? _simUse,
        expire: expire ?? _expire,
        fup: fup ?? _fup,
        fupNotify: fupNotify ?? _fupNotify,
        quota: quota ?? _quota,
        grace: grace ?? _grace,
        graceDate: graceDate ?? _graceDate,
        dataLimit: dataLimit ?? _dataLimit,
        status: status ?? _status,
        suspend: suspend ?? _suspend,
        startOnLogin: startOnLogin ?? _startOnLogin,
        portalLogin: portalLogin ?? _portalLogin,
        autoInvoice: autoInvoice ?? _autoInvoice,
        autoRenew: autoRenew ?? _autoRenew,
        startDate: startDate ?? _startDate,
        expiryDate: expiryDate ?? _expiryDate,
        taxNo: taxNo ?? _taxNo,
        discount: discount ?? _discount,
        planCost: planCost ?? _planCost,
        mac: mac ?? _mac,
        userType: userType ?? _userType,
        bandChange: bandChange ?? _bandChange,
        ottSubCode: ottSubCode ?? _ottSubCode,
        activeAdmin: activeAdmin ?? _activeAdmin,
        bill: bill ?? _bill,
        openingBalance: openingBalance ?? _openingBalance,
        taxable: taxable ?? _taxable,
        lastLogin: lastLogin ?? _lastLogin,
        operatorId: operatorId ?? _operatorId,
        zoneName: zoneName ?? _zoneName,
        createdBy: createdBy ?? _createdBy,
        updatedBy: updatedBy ?? _updatedBy,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        usedData: usedData ?? _usedData,
        lastConnection: lastConnection ?? _lastConnection,
        currentRecharge: currentRecharge ?? _currentRecharge,
      );
  num? get id => _id;
  String? get username => _username;
  dynamic get oldId => _oldId;
  num? get planId => _planId;
  String? get planName => _planName;
  num? get changeplanId => _changeplanId;
  String? get changeplanName => _changeplanName;
  num? get plangroupId => _plangroupId;
  dynamic get planGroup => _planGroup;
  num? get postPlan => _postPlan;
  num? get simUse => _simUse;
  num? get expire => _expire;
  num? get fup => _fup;
  num? get fupNotify => _fupNotify;
  num? get quota => _quota;
  num? get grace => _grace;
  dynamic get graceDate => _graceDate;
  num? get dataLimit => _dataLimit;
  num? get status => _status;
  num? get suspend => _suspend;
  num? get startOnLogin => _startOnLogin;
  num? get portalLogin => _portalLogin;
  num? get autoInvoice => _autoInvoice;
  dynamic get autoRenew => _autoRenew;
  String? get startDate => _startDate;
  String? get expiryDate => _expiryDate;
  dynamic get taxNo => _taxNo;
  String? get discount => _discount;
  dynamic get planCost => _planCost;
  dynamic get mac => _mac;
  num? get userType => _userType;
  num? get bandChange => _bandChange;
  dynamic get ottSubCode => _ottSubCode;
  num? get activeAdmin => _activeAdmin;
  String? get bill => _bill;
  String? get openingBalance => _openingBalance;
  num? get taxable => _taxable;
  dynamic get lastLogin => _lastLogin;
  num? get operatorId => _operatorId;
  String? get zoneName => _zoneName;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  UsedData? get usedData => _usedData;
  LastConnection? get lastConnection => _lastConnection;
  CurrentRecharge? get currentRecharge => _currentRecharge;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['oldId'] = _oldId;
    map['plan_id'] = _planId;
    map['planName'] = _planName;
    map['changeplan_id'] = _changeplanId;
    map['changeplanName'] = _changeplanName;
    map['plangroup_id'] = _plangroupId;
    map['planGroup'] = _planGroup;
    map['postPlan'] = _postPlan;
    map['simUse'] = _simUse;
    map['expire'] = _expire;
    map['fup'] = _fup;
    map['fupNotify'] = _fupNotify;
    map['quota'] = _quota;
    map['grace'] = _grace;
    map['graceDate'] = _graceDate;
    map['dataLimit'] = _dataLimit;
    map['status'] = _status;
    map['suspend'] = _suspend;
    map['startOnLogin'] = _startOnLogin;
    map['portalLogin'] = _portalLogin;
    map['autoInvoice'] = _autoInvoice;
    map['autoRenew'] = _autoRenew;
    map['startDate'] = _startDate;
    map['expiryDate'] = _expiryDate;
    map['taxNo'] = _taxNo;
    map['discount'] = _discount;
    map['planCost'] = _planCost;
    map['mac'] = _mac;
    map['userType'] = _userType;
    map['bandChange'] = _bandChange;
    map['ottSubCode'] = _ottSubCode;
    map['activeAdmin'] = _activeAdmin;
    map['bill'] = _bill;
    map['openingBalance'] = _openingBalance;
    map['taxable'] = _taxable;
    map['lastLogin'] = _lastLogin;
    map['operator_id'] = _operatorId;
    map['zoneName'] = _zoneName;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_usedData != null) {
      map['usedData'] = _usedData?.toJson();
    }
    if (_lastConnection != null) {
      map['lastConnection'] = _lastConnection?.toJson();
    }
    if (_currentRecharge != null) {
      map['current_recharge'] = _currentRecharge?.toJson();
    }
    return map;
  }
}

CurrentRecharge currentRechargeFromJson(String str) =>
    CurrentRecharge.fromJson(json.decode(str));
String currentRechargeToJson(CurrentRecharge data) =>
    json.encode(data.toJson());

class CurrentRecharge {
  CurrentRecharge({
    num? id,
    num? userId,
    String? username,
    num? planId,
    String? planName,
    num? quantity,
    num? remaningQuantity,
    num? status,
    String? startDate,
    String? expiryDate,
    dynamic oldExpiry,
    dynamic changeExpire,
    dynamic pendingValidity,
    dynamic suspendDate,
    num? suspendTime,
    dynamic expiryDetails,
    num? planType,
    num? planCategory,
    dynamic dataLimit,
    num? midNight,
    num? calenderDate,
    num? startOnLogin,
    num? validity,
    num? downBW,
    num? upBW,
    dynamic dayNight,
    dynamic nightStart,
    dynamic nightStop,
    dynamic nightDownBW,
    dynamic nightUpBW,
    dynamic fup,
    dynamic fupDownBW,
    dynamic fupUpBW,
    dynamic data,
    num? carryForward,
    dynamic carryReceiveId,
    dynamic carryReceiveData,
    dynamic totalTopupData,
    dynamic topupExpiryDate,
    dynamic topupStartRechargeId,
    dynamic topupActiveRechargeId,
    dynamic usedTopup,
    dynamic burstLimitUp,
    dynamic burstLimitDown,
    dynamic burstThresholdUp,
    dynamic burstThresholdDown,
    dynamic burstTimeUp,
    dynamic burstTimeDown,
    dynamic subBurstLimitUp,
    dynamic subBurstLimitDown,
    dynamic subBurstThresholdUp,
    dynamic subBurstThresholdDown,
    dynamic subBurstTimeUp,
    dynamic subBurstTimeDown,
    String? franchiseeCost,
    String? customerCost,
    String? totDisc,
    String? totTax,
    String? total,
    String? agr,
    dynamic notes,
    String? remark,
    dynamic ottPlanId,
    dynamic ottPlanName,
    dynamic ottValidity,
    String? otts,
    dynamic userpgId,
    num? operatorId,
    String? zoneName,
    dynamic oldRechId,
    String? createdBy,
    String? updatedBy,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _userId = userId;
    _username = username;
    _planId = planId;
    _planName = planName;
    _quantity = quantity;
    _remaningQuantity = remaningQuantity;
    _status = status;
    _startDate = startDate;
    _expiryDate = expiryDate;
    _oldExpiry = oldExpiry;
    _changeExpire = changeExpire;
    _pendingValidity = pendingValidity;
    _suspendDate = suspendDate;
    _suspendTime = suspendTime;
    _expiryDetails = expiryDetails;
    _planType = planType;
    _planCategory = planCategory;
    _dataLimit = dataLimit;
    _midNight = midNight;
    _calenderDate = calenderDate;
    _startOnLogin = startOnLogin;
    _validity = validity;
    _downBW = downBW;
    _upBW = upBW;
    _dayNight = dayNight;
    _nightStart = nightStart;
    _nightStop = nightStop;
    _nightDownBW = nightDownBW;
    _nightUpBW = nightUpBW;
    _fup = fup;
    _fupDownBW = fupDownBW;
    _fupUpBW = fupUpBW;
    _data = data;
    _carryForward = carryForward;
    _carryReceiveId = carryReceiveId;
    _carryReceiveData = carryReceiveData;
    _totalTopupData = totalTopupData;
    _topupExpiryDate = topupExpiryDate;
    _topupStartRechargeId = topupStartRechargeId;
    _topupActiveRechargeId = topupActiveRechargeId;
    _usedTopup = usedTopup;
    _burstLimitUp = burstLimitUp;
    _burstLimitDown = burstLimitDown;
    _burstThresholdUp = burstThresholdUp;
    _burstThresholdDown = burstThresholdDown;
    _burstTimeUp = burstTimeUp;
    _burstTimeDown = burstTimeDown;
    _subBurstLimitUp = subBurstLimitUp;
    _subBurstLimitDown = subBurstLimitDown;
    _subBurstThresholdUp = subBurstThresholdUp;
    _subBurstThresholdDown = subBurstThresholdDown;
    _subBurstTimeUp = subBurstTimeUp;
    _subBurstTimeDown = subBurstTimeDown;
    _franchiseeCost = franchiseeCost;
    _customerCost = customerCost;
    _totDisc = totDisc;
    _totTax = totTax;
    _total = total;
    _agr = agr;
    _notes = notes;
    _remark = remark;
    _ottPlanId = ottPlanId;
    _ottPlanName = ottPlanName;
    _ottValidity = ottValidity;
    _otts = otts;
    _userpgId = userpgId;
    _operatorId = operatorId;
    _zoneName = zoneName;
    _oldRechId = oldRechId;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  CurrentRecharge.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _username = json['username'];
    _planId = json['plan_id'];
    _planName = json['planName'];
    _quantity = json['quantity'];
    _remaningQuantity = json['remaningQuantity'];
    _status = json['status'];
    _startDate = json['startDate'];
    _expiryDate = json['expiryDate'];
    _oldExpiry = json['oldExpiry'];
    _changeExpire = json['changeExpire'];
    _pendingValidity = json['pendingValidity'];
    _suspendDate = json['suspendDate'];
    _suspendTime = json['suspendTime'];
    _expiryDetails = json['expiryDetails'];
    _planType = json['planType'];
    _planCategory = json['planCategory'];
    _dataLimit = json['dataLimit'];
    _midNight = json['midNight'];
    _calenderDate = json['calenderDate'];
    _startOnLogin = json['startOnLogin'];
    _validity = json['validity'];
    _downBW = json['downBW'];
    _upBW = json['upBW'];
    _dayNight = json['dayNight'];
    _nightStart = json['nightStart'];
    _nightStop = json['nightStop'];
    _nightDownBW = json['nightDownBW'];
    _nightUpBW = json['nightUpBW'];
    _fup = json['fup'];
    _fupDownBW = json['fupDownBW'];
    _fupUpBW = json['fupUpBW'];
    _data = json['data'];
    _carryForward = json['carryForward'];
    _carryReceiveId = json['carryReceiveId'];
    _carryReceiveData = json['carryReceiveData'];
    _totalTopupData = json['totalTopupData'];
    _topupExpiryDate = json['topupExpiryDate'];
    _topupStartRechargeId = json['topupStartRechargeId'];
    _topupActiveRechargeId = json['topupActiveRechargeId'];
    _usedTopup = json['usedTopup'];
    _burstLimitUp = json['burstLimitUp'];
    _burstLimitDown = json['burstLimitDown'];
    _burstThresholdUp = json['burstThresholdUp'];
    _burstThresholdDown = json['burstThresholdDown'];
    _burstTimeUp = json['burstTimeUp'];
    _burstTimeDown = json['burstTimeDown'];
    _subBurstLimitUp = json['subBurstLimitUp'];
    _subBurstLimitDown = json['subBurstLimitDown'];
    _subBurstThresholdUp = json['subBurstThresholdUp'];
    _subBurstThresholdDown = json['subBurstThresholdDown'];
    _subBurstTimeUp = json['subBurstTimeUp'];
    _subBurstTimeDown = json['subBurstTimeDown'];
    _franchiseeCost = json['franchiseeCost'];
    _customerCost = json['customerCost'];
    _totDisc = json['totDisc'];
    _totTax = json['totTax'];
    _total = json['total'];
    _agr = json['agr'];
    _notes = json['notes'];
    _remark = json['remark'];
    _ottPlanId = json['ottPlanId'];
    _ottPlanName = json['ottPlanName'];
    _ottValidity = json['ottValidity'];
    _otts = json['otts'];
    _userpgId = json['userpg_id'];
    _operatorId = json['operator_id'];
    _zoneName = json['zoneName'];
    _oldRechId = json['oldRechId'];
    _createdBy = json['createdBy'];
    _updatedBy = json['updatedBy'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _userId;
  String? _username;
  num? _planId;
  String? _planName;
  num? _quantity;
  num? _remaningQuantity;
  num? _status;
  String? _startDate;
  String? _expiryDate;
  dynamic _oldExpiry;
  dynamic _changeExpire;
  dynamic _pendingValidity;
  dynamic _suspendDate;
  num? _suspendTime;
  dynamic _expiryDetails;
  num? _planType;
  num? _planCategory;
  dynamic _dataLimit;
  num? _midNight;
  num? _calenderDate;
  num? _startOnLogin;
  num? _validity;
  num? _downBW;
  num? _upBW;
  dynamic _dayNight;
  dynamic _nightStart;
  dynamic _nightStop;
  dynamic _nightDownBW;
  dynamic _nightUpBW;
  dynamic _fup;
  dynamic _fupDownBW;
  dynamic _fupUpBW;
  dynamic _data;
  num? _carryForward;
  dynamic _carryReceiveId;
  dynamic _carryReceiveData;
  dynamic _totalTopupData;
  dynamic _topupExpiryDate;
  dynamic _topupStartRechargeId;
  dynamic _topupActiveRechargeId;
  dynamic _usedTopup;
  dynamic _burstLimitUp;
  dynamic _burstLimitDown;
  dynamic _burstThresholdUp;
  dynamic _burstThresholdDown;
  dynamic _burstTimeUp;
  dynamic _burstTimeDown;
  dynamic _subBurstLimitUp;
  dynamic _subBurstLimitDown;
  dynamic _subBurstThresholdUp;
  dynamic _subBurstThresholdDown;
  dynamic _subBurstTimeUp;
  dynamic _subBurstTimeDown;
  String? _franchiseeCost;
  String? _customerCost;
  String? _totDisc;
  String? _totTax;
  String? _total;
  String? _agr;
  dynamic _notes;
  String? _remark;
  dynamic _ottPlanId;
  dynamic _ottPlanName;
  dynamic _ottValidity;
  String? _otts;
  dynamic _userpgId;
  num? _operatorId;
  String? _zoneName;
  dynamic _oldRechId;
  String? _createdBy;
  String? _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  CurrentRecharge copyWith({
    num? id,
    num? userId,
    String? username,
    num? planId,
    String? planName,
    num? quantity,
    num? remaningQuantity,
    num? status,
    String? startDate,
    String? expiryDate,
    dynamic oldExpiry,
    dynamic changeExpire,
    dynamic pendingValidity,
    dynamic suspendDate,
    num? suspendTime,
    dynamic expiryDetails,
    num? planType,
    num? planCategory,
    dynamic dataLimit,
    num? midNight,
    num? calenderDate,
    num? startOnLogin,
    num? validity,
    num? downBW,
    num? upBW,
    dynamic dayNight,
    dynamic nightStart,
    dynamic nightStop,
    dynamic nightDownBW,
    dynamic nightUpBW,
    dynamic fup,
    dynamic fupDownBW,
    dynamic fupUpBW,
    dynamic data,
    num? carryForward,
    dynamic carryReceiveId,
    dynamic carryReceiveData,
    dynamic totalTopupData,
    dynamic topupExpiryDate,
    dynamic topupStartRechargeId,
    dynamic topupActiveRechargeId,
    dynamic usedTopup,
    dynamic burstLimitUp,
    dynamic burstLimitDown,
    dynamic burstThresholdUp,
    dynamic burstThresholdDown,
    dynamic burstTimeUp,
    dynamic burstTimeDown,
    dynamic subBurstLimitUp,
    dynamic subBurstLimitDown,
    dynamic subBurstThresholdUp,
    dynamic subBurstThresholdDown,
    dynamic subBurstTimeUp,
    dynamic subBurstTimeDown,
    String? franchiseeCost,
    String? customerCost,
    String? totDisc,
    String? totTax,
    String? total,
    String? agr,
    dynamic notes,
    String? remark,
    dynamic ottPlanId,
    dynamic ottPlanName,
    dynamic ottValidity,
    String? otts,
    dynamic userpgId,
    num? operatorId,
    String? zoneName,
    dynamic oldRechId,
    String? createdBy,
    String? updatedBy,
    String? createdAt,
    String? updatedAt,
  }) =>
      CurrentRecharge(
        id: id ?? _id,
        userId: userId ?? _userId,
        username: username ?? _username,
        planId: planId ?? _planId,
        planName: planName ?? _planName,
        quantity: quantity ?? _quantity,
        remaningQuantity: remaningQuantity ?? _remaningQuantity,
        status: status ?? _status,
        startDate: startDate ?? _startDate,
        expiryDate: expiryDate ?? _expiryDate,
        oldExpiry: oldExpiry ?? _oldExpiry,
        changeExpire: changeExpire ?? _changeExpire,
        pendingValidity: pendingValidity ?? _pendingValidity,
        suspendDate: suspendDate ?? _suspendDate,
        suspendTime: suspendTime ?? _suspendTime,
        expiryDetails: expiryDetails ?? _expiryDetails,
        planType: planType ?? _planType,
        planCategory: planCategory ?? _planCategory,
        dataLimit: dataLimit ?? _dataLimit,
        midNight: midNight ?? _midNight,
        calenderDate: calenderDate ?? _calenderDate,
        startOnLogin: startOnLogin ?? _startOnLogin,
        validity: validity ?? _validity,
        downBW: downBW ?? _downBW,
        upBW: upBW ?? _upBW,
        dayNight: dayNight ?? _dayNight,
        nightStart: nightStart ?? _nightStart,
        nightStop: nightStop ?? _nightStop,
        nightDownBW: nightDownBW ?? _nightDownBW,
        nightUpBW: nightUpBW ?? _nightUpBW,
        fup: fup ?? _fup,
        fupDownBW: fupDownBW ?? _fupDownBW,
        fupUpBW: fupUpBW ?? _fupUpBW,
        data: data ?? _data,
        carryForward: carryForward ?? _carryForward,
        carryReceiveId: carryReceiveId ?? _carryReceiveId,
        carryReceiveData: carryReceiveData ?? _carryReceiveData,
        totalTopupData: totalTopupData ?? _totalTopupData,
        topupExpiryDate: topupExpiryDate ?? _topupExpiryDate,
        topupStartRechargeId: topupStartRechargeId ?? _topupStartRechargeId,
        topupActiveRechargeId: topupActiveRechargeId ?? _topupActiveRechargeId,
        usedTopup: usedTopup ?? _usedTopup,
        burstLimitUp: burstLimitUp ?? _burstLimitUp,
        burstLimitDown: burstLimitDown ?? _burstLimitDown,
        burstThresholdUp: burstThresholdUp ?? _burstThresholdUp,
        burstThresholdDown: burstThresholdDown ?? _burstThresholdDown,
        burstTimeUp: burstTimeUp ?? _burstTimeUp,
        burstTimeDown: burstTimeDown ?? _burstTimeDown,
        subBurstLimitUp: subBurstLimitUp ?? _subBurstLimitUp,
        subBurstLimitDown: subBurstLimitDown ?? _subBurstLimitDown,
        subBurstThresholdUp: subBurstThresholdUp ?? _subBurstThresholdUp,
        subBurstThresholdDown: subBurstThresholdDown ?? _subBurstThresholdDown,
        subBurstTimeUp: subBurstTimeUp ?? _subBurstTimeUp,
        subBurstTimeDown: subBurstTimeDown ?? _subBurstTimeDown,
        franchiseeCost: franchiseeCost ?? _franchiseeCost,
        customerCost: customerCost ?? _customerCost,
        totDisc: totDisc ?? _totDisc,
        totTax: totTax ?? _totTax,
        total: total ?? _total,
        agr: agr ?? _agr,
        notes: notes ?? _notes,
        remark: remark ?? _remark,
        ottPlanId: ottPlanId ?? _ottPlanId,
        ottPlanName: ottPlanName ?? _ottPlanName,
        ottValidity: ottValidity ?? _ottValidity,
        otts: otts ?? _otts,
        userpgId: userpgId ?? _userpgId,
        operatorId: operatorId ?? _operatorId,
        zoneName: zoneName ?? _zoneName,
        oldRechId: oldRechId ?? _oldRechId,
        createdBy: createdBy ?? _createdBy,
        updatedBy: updatedBy ?? _updatedBy,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num? get id => _id;
  num? get userId => _userId;
  String? get username => _username;
  num? get planId => _planId;
  String? get planName => _planName;
  num? get quantity => _quantity;
  num? get remaningQuantity => _remaningQuantity;
  num? get status => _status;
  String? get startDate => _startDate;
  String? get expiryDate => _expiryDate;
  dynamic get oldExpiry => _oldExpiry;
  dynamic get changeExpire => _changeExpire;
  dynamic get pendingValidity => _pendingValidity;
  dynamic get suspendDate => _suspendDate;
  num? get suspendTime => _suspendTime;
  dynamic get expiryDetails => _expiryDetails;
  num? get planType => _planType;
  num? get planCategory => _planCategory;
  dynamic get dataLimit => _dataLimit;
  num? get midNight => _midNight;
  num? get calenderDate => _calenderDate;
  num? get startOnLogin => _startOnLogin;
  num? get validity => _validity;
  num? get downBW => _downBW;
  num? get upBW => _upBW;
  dynamic get dayNight => _dayNight;
  dynamic get nightStart => _nightStart;
  dynamic get nightStop => _nightStop;
  dynamic get nightDownBW => _nightDownBW;
  dynamic get nightUpBW => _nightUpBW;
  dynamic get fup => _fup;
  dynamic get fupDownBW => _fupDownBW;
  dynamic get fupUpBW => _fupUpBW;
  dynamic get data => _data;
  num? get carryForward => _carryForward;
  dynamic get carryReceiveId => _carryReceiveId;
  dynamic get carryReceiveData => _carryReceiveData;
  dynamic get totalTopupData => _totalTopupData;
  dynamic get topupExpiryDate => _topupExpiryDate;
  dynamic get topupStartRechargeId => _topupStartRechargeId;
  dynamic get topupActiveRechargeId => _topupActiveRechargeId;
  dynamic get usedTopup => _usedTopup;
  dynamic get burstLimitUp => _burstLimitUp;
  dynamic get burstLimitDown => _burstLimitDown;
  dynamic get burstThresholdUp => _burstThresholdUp;
  dynamic get burstThresholdDown => _burstThresholdDown;
  dynamic get burstTimeUp => _burstTimeUp;
  dynamic get burstTimeDown => _burstTimeDown;
  dynamic get subBurstLimitUp => _subBurstLimitUp;
  dynamic get subBurstLimitDown => _subBurstLimitDown;
  dynamic get subBurstThresholdUp => _subBurstThresholdUp;
  dynamic get subBurstThresholdDown => _subBurstThresholdDown;
  dynamic get subBurstTimeUp => _subBurstTimeUp;
  dynamic get subBurstTimeDown => _subBurstTimeDown;
  String? get franchiseeCost => _franchiseeCost;
  String? get customerCost => _customerCost;
  String? get totDisc => _totDisc;
  String? get totTax => _totTax;
  String? get total => _total;
  String? get agr => _agr;
  dynamic get notes => _notes;
  String? get remark => _remark;
  dynamic get ottPlanId => _ottPlanId;
  dynamic get ottPlanName => _ottPlanName;
  dynamic get ottValidity => _ottValidity;
  String? get otts => _otts;
  dynamic get userpgId => _userpgId;
  num? get operatorId => _operatorId;
  String? get zoneName => _zoneName;
  dynamic get oldRechId => _oldRechId;
  String? get createdBy => _createdBy;
  String? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['username'] = _username;
    map['plan_id'] = _planId;
    map['planName'] = _planName;
    map['quantity'] = _quantity;
    map['remaningQuantity'] = _remaningQuantity;
    map['status'] = _status;
    map['startDate'] = _startDate;
    map['expiryDate'] = _expiryDate;
    map['oldExpiry'] = _oldExpiry;
    map['changeExpire'] = _changeExpire;
    map['pendingValidity'] = _pendingValidity;
    map['suspendDate'] = _suspendDate;
    map['suspendTime'] = _suspendTime;
    map['expiryDetails'] = _expiryDetails;
    map['planType'] = _planType;
    map['planCategory'] = _planCategory;
    map['dataLimit'] = _dataLimit;
    map['midNight'] = _midNight;
    map['calenderDate'] = _calenderDate;
    map['startOnLogin'] = _startOnLogin;
    map['validity'] = _validity;
    map['downBW'] = _downBW;
    map['upBW'] = _upBW;
    map['dayNight'] = _dayNight;
    map['nightStart'] = _nightStart;
    map['nightStop'] = _nightStop;
    map['nightDownBW'] = _nightDownBW;
    map['nightUpBW'] = _nightUpBW;
    map['fup'] = _fup;
    map['fupDownBW'] = _fupDownBW;
    map['fupUpBW'] = _fupUpBW;
    map['data'] = _data;
    map['carryForward'] = _carryForward;
    map['carryReceiveId'] = _carryReceiveId;
    map['carryReceiveData'] = _carryReceiveData;
    map['totalTopupData'] = _totalTopupData;
    map['topupExpiryDate'] = _topupExpiryDate;
    map['topupStartRechargeId'] = _topupStartRechargeId;
    map['topupActiveRechargeId'] = _topupActiveRechargeId;
    map['usedTopup'] = _usedTopup;
    map['burstLimitUp'] = _burstLimitUp;
    map['burstLimitDown'] = _burstLimitDown;
    map['burstThresholdUp'] = _burstThresholdUp;
    map['burstThresholdDown'] = _burstThresholdDown;
    map['burstTimeUp'] = _burstTimeUp;
    map['burstTimeDown'] = _burstTimeDown;
    map['subBurstLimitUp'] = _subBurstLimitUp;
    map['subBurstLimitDown'] = _subBurstLimitDown;
    map['subBurstThresholdUp'] = _subBurstThresholdUp;
    map['subBurstThresholdDown'] = _subBurstThresholdDown;
    map['subBurstTimeUp'] = _subBurstTimeUp;
    map['subBurstTimeDown'] = _subBurstTimeDown;
    map['franchiseeCost'] = _franchiseeCost;
    map['customerCost'] = _customerCost;
    map['totDisc'] = _totDisc;
    map['totTax'] = _totTax;
    map['total'] = _total;
    map['agr'] = _agr;
    map['notes'] = _notes;
    map['remark'] = _remark;
    map['ottPlanId'] = _ottPlanId;
    map['ottPlanName'] = _ottPlanName;
    map['ottValidity'] = _ottValidity;
    map['otts'] = _otts;
    map['userpg_id'] = _userpgId;
    map['operator_id'] = _operatorId;
    map['zoneName'] = _zoneName;
    map['oldRechId'] = _oldRechId;
    map['createdBy'] = _createdBy;
    map['updatedBy'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}

LastConnection lastConnectionFromJson(String str) =>
    LastConnection.fromJson(json.decode(str));
String lastConnectionToJson(LastConnection data) => json.encode(data.toJson());

class LastConnection {
  LastConnection({
    String? username,
    String? nasipaddress,
    String? framedipaddress,
    String? callingstationid,
    String? acctstarttime,
    dynamic acctstoptime,
    num? acctsessiontime,
    String? calledstationid,
    num? acctinputoctets,
    num? acctoutputoctets,
  }) {
    _username = username;
    _nasipaddress = nasipaddress;
    _framedipaddress = framedipaddress;
    _callingstationid = callingstationid;
    _acctstarttime = acctstarttime;
    _acctstoptime = acctstoptime;
    _acctsessiontime = acctsessiontime;
    _calledstationid = calledstationid;
    _acctinputoctets = acctinputoctets;
    _acctoutputoctets = acctoutputoctets;
  }

  LastConnection.fromJson(dynamic json) {
    _username = json['username'];
    _nasipaddress = json['nasipaddress'];
    _framedipaddress = json['framedipaddress'];
    _callingstationid = json['callingstationid'];
    _acctstarttime = json['acctstarttime'];
    _acctstoptime = json['acctstoptime'];
    _acctsessiontime = json['acctsessiontime'];
    _calledstationid = json['calledstationid'];
    _acctinputoctets = json['acctinputoctets'];
    _acctoutputoctets = json['acctoutputoctets'];
  }
  String? _username;
  String? _nasipaddress;
  String? _framedipaddress;
  String? _callingstationid;
  String? _acctstarttime;
  dynamic _acctstoptime;
  num? _acctsessiontime;
  String? _calledstationid;
  num? _acctinputoctets;
  num? _acctoutputoctets;
  LastConnection copyWith({
    String? username,
    String? nasipaddress,
    String? framedipaddress,
    String? callingstationid,
    String? acctstarttime,
    dynamic acctstoptime,
    num? acctsessiontime,
    String? calledstationid,
    num? acctinputoctets,
    num? acctoutputoctets,
  }) =>
      LastConnection(
        username: username ?? _username,
        nasipaddress: nasipaddress ?? _nasipaddress,
        framedipaddress: framedipaddress ?? _framedipaddress,
        callingstationid: callingstationid ?? _callingstationid,
        acctstarttime: acctstarttime ?? _acctstarttime,
        acctstoptime: acctstoptime ?? _acctstoptime,
        acctsessiontime: acctsessiontime ?? _acctsessiontime,
        calledstationid: calledstationid ?? _calledstationid,
        acctinputoctets: acctinputoctets ?? _acctinputoctets,
        acctoutputoctets: acctoutputoctets ?? _acctoutputoctets,
      );
  String? get username => _username;
  String? get nasipaddress => _nasipaddress;
  String? get framedipaddress => _framedipaddress;
  String? get callingstationid => _callingstationid;
  String? get acctstarttime => _acctstarttime;
  dynamic get acctstoptime => _acctstoptime;
  num? get acctsessiontime => _acctsessiontime;
  String? get calledstationid => _calledstationid;
  num? get acctinputoctets => _acctinputoctets;
  num? get acctoutputoctets => _acctoutputoctets;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['nasipaddress'] = _nasipaddress;
    map['framedipaddress'] = _framedipaddress;
    map['callingstationid'] = _callingstationid;
    map['acctstarttime'] = _acctstarttime;
    map['acctstoptime'] = _acctstoptime;
    map['acctsessiontime'] = _acctsessiontime;
    map['calledstationid'] = _calledstationid;
    map['acctinputoctets'] = _acctinputoctets;
    map['acctoutputoctets'] = _acctoutputoctets;
    return map;
  }
}

UsedData usedDataFromJson(String str) => UsedData.fromJson(json.decode(str));
String usedDataToJson(UsedData data) => json.encode(data.toJson());

class UsedData {
  UsedData({
    String? upload,
    String? download,
  }) {
    _upload = upload;
    _download = download;
  }

  UsedData.fromJson(dynamic json) {
    _upload = json['upload'];
    _download = json['download'];
  }
  String? _upload;
  String? _download;
  UsedData copyWith({
    String? upload,
    String? download,
  }) =>
      UsedData(
        upload: upload ?? _upload,
        download: download ?? _download,
      );
  String? get upload => _upload;
  String? get download => _download;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['upload'] = _upload;
    map['download'] = _download;
    return map;
  }
}
