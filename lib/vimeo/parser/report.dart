/// uri : "/users/87109003/report"
/// options : ["POST"]
/// reason : ["inappropriate avatar","spammy","bad videos","creepy","not playing nice","impersonation","inappropriate job post"]

class Report {
  String? uri;
  List<String>? options;
  List<String>? reason;

  Report({
      this.uri, 
      this.options, 
      this.reason});

  Report.fromJson(dynamic json) {
    uri = json['uri'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
    reason = json['reason'] != null ? json['reason'].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['uri'] = uri;
    map['options'] = options;
    map['reason'] = reason;
    return map;
  }

}