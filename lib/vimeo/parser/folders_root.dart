/// uri : "/users/87109003/folders/root"
/// options : ["GET"]

class Folders_root {
  String? uri;
  List<String>? options;

  Folders_root({
      this.uri, 
      this.options});

  Folders_root.fromJson(dynamic json) {
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