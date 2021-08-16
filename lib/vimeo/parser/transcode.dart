/// status : "complete"

class Transcode {
  String? status;

  Transcode({
      this.status});

  Transcode.fromJson(dynamic json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

}