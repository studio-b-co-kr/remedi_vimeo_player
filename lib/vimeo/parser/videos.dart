/// uri : "/users/87109003/videos"
/// options : ["GET"]
/// total : 10

class Videos {
  String? uri;
  List<String>? options;
  int? total;

  Videos({
      this.uri, 
      this.options, 
      this.total});

  Videos.fromJson(dynamic json) {
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