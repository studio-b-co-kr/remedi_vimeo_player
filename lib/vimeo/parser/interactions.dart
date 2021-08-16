import 'follow.dart';
import 'block.dart';
import 'report.dart';

/// follow : {"added":false,"added_time":null,"uri":"/users/127307985/following/87109003","options":["GET","PUT","DELETE"]}
/// block : {"uri":"/me/block/87109003","options":["PUT","DELETE"],"added":false,"added_time":null}
/// report : {"uri":"/users/87109003/report","options":["POST"],"reason":["inappropriate avatar","spammy","bad videos","creepy","not playing nice","impersonation","inappropriate job post"]}

class Interactions {
  Follow? follow;
  Block? block;
  Report? report;

  Interactions({
      this.follow, 
      this.block, 
      this.report});

  Interactions.fromJson(dynamic json) {
    follow = json['follow'] != null ? Follow.fromJson(json['follow']) : null;
    block = json['block'] != null ? Block.fromJson(json['block']) : null;
    report = json['report'] != null ? Report.fromJson(json['report']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (follow != null) {
      map['follow'] = follow?.toJson();
    }
    if (block != null) {
      map['block'] = block?.toJson();
    }
    if (report != null) {
      map['report'] = report?.toJson();
    }
    return map;
  }

}