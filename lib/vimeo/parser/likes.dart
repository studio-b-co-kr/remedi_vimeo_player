/// uri : "/users/87109003/likes"
/// options : ["GET"]
/// total : 79

class Likes {
  String? uri;
  List<String>? options;
  int? total;

  Likes({
      this.uri, 
      this.options, 
      this.total});

  Likes.fromJson(dynamic json) {
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