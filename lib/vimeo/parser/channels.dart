/// uri : "/users/87109003/channels"
/// options : ["GET"]
/// total : 3

class Channels {
  String? uri;
  List<String>? options;
  int? total;

  Channels({
      this.uri, 
      this.options, 
      this.total});

  Channels.fromJson(dynamic json) {
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