/// uri : "/users/87109003/following"
/// options : ["GET"]
/// total : 44

class Following {
  String? uri;
  List<String>? options;
  int? total;

  Following({
      this.uri, 
      this.options, 
      this.total});

  Following.fromJson(dynamic json) {
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