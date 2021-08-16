/// uri : "/users/87109003/shared/videos"
/// options : ["GET"]
/// total : 1

class Shared {
  String? uri;
  List<String>? options;
  int? total;

  Shared({
      this.uri, 
      this.options, 
      this.total});

  Shared.fromJson(dynamic json) {
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