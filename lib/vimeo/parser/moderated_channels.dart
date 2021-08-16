/// uri : "/users/87109003/channels?filter=moderated"
/// options : ["GET"]
/// total : 0

class Moderated_channels {
  String? uri;
  List<String>? options;
  int? total;

  Moderated_channels({
      this.uri, 
      this.options, 
      this.total});

  Moderated_channels.fromJson(dynamic json) {
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