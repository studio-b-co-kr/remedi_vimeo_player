/// uri : "/users/87109003/membership/"
/// options : ["PATCH"]

class Membership {
  String? uri;
  List<String>? options;

  Membership({
      this.uri, 
      this.options});

  Membership.fromJson(dynamic json) {
    uri = json['uri'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['uri'] = uri;
    map['options'] = options;
    return map;
  }

}