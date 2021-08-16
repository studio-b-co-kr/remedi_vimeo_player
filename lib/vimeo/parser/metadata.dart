import 'connections.dart';
import 'interactions.dart';

/// connections : {"albums":{"uri":"/users/87109003/albums","options":["GET"],"total":4},"appearances":{"uri":"/users/87109003/appearances","options":["GET"],"total":0},"channels":{"uri":"/users/87109003/channels","options":["GET"],"total":3},"feed":{"uri":"/users/87109003/feed","options":["GET"]},"followers":{"uri":"/users/87109003/followers","options":["GET"],"total":1317},"following":{"uri":"/users/87109003/following","options":["GET"],"total":44},"groups":{"uri":"/users/87109003/groups","options":["GET"],"total":13},"likes":{"uri":"/users/87109003/likes","options":["GET"],"total":79},"membership":{"uri":"/users/87109003/membership/","options":["PATCH"]},"moderated_channels":{"uri":"/users/87109003/channels?filter=moderated","options":["GET"],"total":0},"portfolios":{"uri":"/users/87109003/portfolios","options":["GET"],"total":0},"videos":{"uri":"/users/87109003/videos","options":["GET"],"total":10},"shared":{"uri":"/users/87109003/shared/videos","options":["GET"],"total":1},"pictures":{"uri":"/users/87109003/pictures","options":["GET","POST"],"total":1},"folders_root":{"uri":"/users/87109003/folders/root","options":["GET"]},"teams":{"uri":"/users/87109003/teams","options":["GET"],"total":1}}
/// interactions : {"follow":{"added":false,"added_time":null,"uri":"/users/127307985/following/87109003","options":["GET","PUT","DELETE"]},"block":{"uri":"/me/block/87109003","options":["PUT","DELETE"],"added":false,"added_time":null},"report":{"uri":"/users/87109003/report","options":["POST"],"reason":["inappropriate avatar","spammy","bad videos","creepy","not playing nice","impersonation","inappropriate job post"]}}

class Metadata {
  Connections? connections;
  Interactions? interactions;

  Metadata({
      this.connections, 
      this.interactions});

  Metadata.fromJson(dynamic json) {
    connections = json['connections'] != null ? Connections.fromJson(json['connections']) : null;
    interactions = json['interactions'] != null ? Interactions.fromJson(json['interactions']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (connections != null) {
      map['connections'] = connections?.toJson();
    }
    if (interactions != null) {
      map['interactions'] = interactions?.toJson();
    }
    return map;
  }

}