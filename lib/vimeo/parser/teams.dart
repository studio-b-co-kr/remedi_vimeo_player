/// uri : "/users/87109003/teams"
/// options : ["GET"]
/// total : 1

class Teams {
  String? uri;
  List<String>? options;
  int? total;

  Teams({
      this.uri, 
      this.options, 
      this.total});

  Teams.fromJson(dynamic json) {
    uri = json['uri'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['uri'] = uri;
    map['options'] = options;
    map['total'] = total;
    return map;
  }

}