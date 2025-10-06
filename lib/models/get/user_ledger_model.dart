class UserLedgerModel {
  final List<Transaction> data;
  final String username;
  final String zoneName;
  final int totalDebit;
  final int totalCredit;
  final int remainingBalance;

  UserLedgerModel({
    required this.data,
    required this.username,
    required this.zoneName,
    required this.totalDebit,
    required this.totalCredit,
    required this.remainingBalance,
  });

  factory UserLedgerModel.fromJson(Map<String, dynamic> json) {
    return UserLedgerModel(
      data: List<Transaction>.from(
          json['data'].map((x) => Transaction.fromJson(x))),
      username: json['username'],
      zoneName: json['zoneName'],
      totalDebit: json['totalDebit'],
      totalCredit: json['totalCredit'],
      remainingBalance: json['remainingBalance'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': List<dynamic>.from(data.map((x) => x.toJson())),
      'username': username,
      'zoneName': zoneName,
      'totalDebit': totalDebit,
      'totalCredit': totalCredit,
      'remainingBalance': remainingBalance,
    };
  }
}

class Transaction {
  final String date;
  final String dr;
  final int cr;
  final String? notes;
  final String transactionNo;
  final String type;
  final String createdAt;

  Transaction({
    required this.date,
    required this.dr,
    required this.cr,
    this.notes,
    required this.transactionNo,
    required this.type,
    required this.createdAt,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      date: json['date'],
      dr: json['dr'],
      cr: json['cr'],
      notes: json['notes'],
      transactionNo: json['transactionNo'],
      type: json['type'],
      createdAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'dr': dr,
      'cr': cr,
      'notes': notes,
      'transactionNo': transactionNo,
      'type': type,
      'created_at': createdAt,
    };
  }
}
