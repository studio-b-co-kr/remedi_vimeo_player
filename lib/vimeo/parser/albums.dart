/// uri : "/users/87109003/albums"
/// options : ["GET"]
/// total : 4

class Albums {
  String? uri;
  List<String>? options;
  int? total;

  Albums({
      this.uri, 
      this.options, 
      this.total});

  Albums.fromJson(dynamic json) {
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