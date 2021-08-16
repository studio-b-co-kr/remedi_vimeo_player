/// uri : "/users/87109003/followers"
/// options : ["GET"]
/// total : 1317

class Followers {
  String? uri;
  List<String>? options;
  int? total;

  Followers({
      this.uri, 
      this.options, 
      this.total});

  Followers.fromJson(dynamic json) {
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