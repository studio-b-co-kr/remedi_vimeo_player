/// uri : "/users/87109003/links/6239404"
/// name : "Studio Goono"
/// link : "http://www.goono.tv"
/// type : "link"
/// description : null

class Websites {
  String? uri;
  String? name;
  String? link;
  String? type;
  dynamic? description;

  Websites({
      this.uri, 
      this.name, 
      this.link, 
      this.type, 
      this.description});

  Websites.fromJson(dynamic json) {
    uri = json['uri'];
    name = json['name'];
    link = json['link'];
    type = json['type'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['uri'] = uri;
    map['name'] = name;
    map['link'] = link;
    map['type'] = type;
    map['description'] = description;
    return map;
  }

}