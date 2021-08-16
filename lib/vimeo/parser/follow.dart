/// added : false
/// added_time : null
/// uri : "/users/127307985/following/87109003"
/// options : ["GET","PUT","DELETE"]

class Follow {
  bool? added;
  dynamic? addedTime;
  String? uri;
  List<String>? options;

  Follow({
      this.added, 
      this.addedTime, 
      this.uri, 
      this.options});

  Follow.fromJson(dynamic json) {
    added = json['added'];
    addedTime = json['added_time'];
    uri = json['uri'];
    options = json['options'] != null ? json['options'].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['added'] = added;
    map['added_time'] = addedTime;
    map['uri'] = uri;
    map['options'] = options;
    return map;
  }

}