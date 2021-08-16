/// uri : "/users/87109003/groups"
/// options : ["GET"]
/// total : 13

class Groups {
  String? uri;
  List<String>? options;
  int? total;

  Groups({
      this.uri, 
      this.options, 
      this.total});

  Groups.fromJson(dynamic json) {
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