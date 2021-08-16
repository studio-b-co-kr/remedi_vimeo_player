/// uri : "/users/87109003/feed"
/// options : ["GET"]

class Feed {
  String? uri;
  List<String>? options;

  Feed({
      this.uri, 
      this.options});

  Feed.fromJson(dynamic json) {
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