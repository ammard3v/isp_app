// URL: https://demo_isp_app/index.php/

class AppUrl {
  static const String baseUrl = 'https://demo_isp_app/index.php/';
  //post
  static const String loginApi = '${baseUrl}api/login';
  static const String registerUrl =
      '${baseUrl}api/register'; //no url just demo *unsure

  static const String newComplaintApi = '${baseUrl}api/sla';
  static const String resetPasswordApi = '${baseUrl}api/password';

  //get
  static const String dashboardApi = '${baseUrl}api/dashboard/1';
  static const String complaintListApi = '${baseUrl}api/sla';
  static const String passswordApi = '${baseUrl}api/login';

  //custom-searched
  static const String userDetailApi = '${baseUrl}api/userDetail';
  static const String userLedgerApi = '${baseUrl}api/userledger';
  static const String rechargeDetails = '${baseUrl}api/rechargeList';
  static const String userledger = '${baseUrl}api/userledger';

  static const String complaintStatusLogApi = '${baseUrl}api/sla/{ComplaintID}';
  static const String ssidHostListApi = '${baseUrl}api/useronu/';

//put
  static const String ssidPasswordChangeApi = '${baseUrl}api/useronu/';

  //userProfile
  static const String userProfile = '${baseUrl}api/userDetail';
}

// available apis
// {
// "password": true,
// "session": true,
// "invoice": true,
// "receipt": true,
// "traffic": true,
// "sla": true,
// "dashboard": true,
// "voucher": true,
// "recharge": true,
// "rechargeList": true,
// "userDetail": true,
// "wifiSSID": true,
// "wifiPassword": true
// }
