/// name : "Parallel Uploader"
/// uri : "/apps/87099"

class App {
  String? name;
  String? uri;

  App({
      this.name, 
      this.uri});

  App.fromJson(dynamic json) {
    name = json['name'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['uri'] = uri;
    return map;
  }

}