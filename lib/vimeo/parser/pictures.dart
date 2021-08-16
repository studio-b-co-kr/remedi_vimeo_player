/// uri : "/users/87109003/pictures"
/// options : ["GET","POST"]
/// total : 1

class Pictures {
  String? uri;
  List<String>? options;
  int? total;

  Pictures({
      this.uri, 
      this.options, 
      this.total});

  Pictures.fromJson(dynamic json) {
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