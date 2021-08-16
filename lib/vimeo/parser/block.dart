/// uri : "/me/block/87109003"
/// options : ["PUT","DELETE"]
/// added : false
/// added_time : null

class Block {
  String? uri;
  List<String>? options;
  bool? added;
  dynamic? addedTime;

  Block({
      this.uri, 
      this.options, 
      this.added, 
      this.addedTime});

  Block.fromJson(dynamic json) {
    uri = json['uri'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
    added = json['added'];
    addedTime = json['added_time'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['uri'] = uri;
    map['options'] = options;
    map['added'] = added;
    map['added_time'] = addedTime;
    return map;
  }

}