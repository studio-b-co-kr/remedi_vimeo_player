/// uri : "/users/87109003/appearances"
/// options : ["GET"]
/// total : 0

class Appearances {
  String? uri;
  List<String>? options;
  int? total;

  Appearances({
      this.uri, 
      this.options, 
      this.total});

  Appearances.fromJson(dynamic json) {
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