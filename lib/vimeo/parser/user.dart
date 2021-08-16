import 'capabilities.dart';
import 'pictures.dart';
import 'websites.dart';
import 'metadata.dart';
import 'location_details.dart';

/// uri : "/users/87109003"
/// name : "Studio Goono"
/// link : "https://vimeo.com/studiogoono"
/// capabilities : {"hasLiveSubscription":false,"hasEnterpriseLihp":false,"hasSvvTimecodedComments":false}
/// location : "Sydney, Australia"
/// gender : "o"
/// bio : "Brewing up works by filmmakers Tom Noakes, Lucy Gaffy & Will Goodfellow since 2016.\n\nwww.goono.tv"
/// short_bio : "Original screen content brewed up by Australian filmmakers Tom Noakes, Lucy Gaffy &amp; Will Goodfellow"
/// created_time : "2018-07-09T04:03:06+00:00"
/// pictures : {"uri":"/users/87109003/pictures/26330032","active":true,"type":"custom","sizes":[{"width":30,"height":30,"link":"https://i.vimeocdn.com/portrait/26330032_30x30"},{"width":72,"height":72,"link":"https://i.vimeocdn.com/portrait/26330032_72x72"},{"width":75,"height":75,"link":"https://i.vimeocdn.com/portrait/26330032_75x75"},{"width":100,"height":100,"link":"https://i.vimeocdn.com/portrait/26330032_100x100"},{"width":144,"height":144,"link":"https://i.vimeocdn.com/portrait/26330032_144x144"},{"width":216,"height":216,"link":"https://i.vimeocdn.com/portrait/26330032_216x216"},{"width":288,"height":288,"link":"https://i.vimeocdn.com/portrait/26330032_288x288"},{"width":300,"height":300,"link":"https://i.vimeocdn.com/portrait/26330032_300x300"},{"width":360,"height":360,"link":"https://i.vimeocdn.com/portrait/26330032_360x360"}],"resource_key":"88139a121dd27e9a9fa489c888820b2e0ed2c8c1","default_picture":false}
/// websites : [{"uri":"/users/87109003/links/6239404","name":"Studio Goono","link":"http://www.goono.tv","type":"link","description":null},{"uri":"/users/87109003/links/6239405","name":"Facebook","link":"https://www.facebook.com/studiogoono/","type":"facebook","description":null},{"uri":"/users/87109003/links/6239406","name":"Instagram","link":"https://www.instagram.com/studiogoono/","type":"instagram","description":null},{"uri":"/users/87109003/links/6239407","name":"Twitter","link":"https://twitter.com/StudioGoono","type":"twitter","description":null}]
/// metadata : {"connections":{"albums":{"uri":"/users/87109003/albums","options":["GET"],"total":4},"appearances":{"uri":"/users/87109003/appearances","options":["GET"],"total":0},"channels":{"uri":"/users/87109003/channels","options":["GET"],"total":3},"feed":{"uri":"/users/87109003/feed","options":["GET"]},"followers":{"uri":"/users/87109003/followers","options":["GET"],"total":1317},"following":{"uri":"/users/87109003/following","options":["GET"],"total":44},"groups":{"uri":"/users/87109003/groups","options":["GET"],"total":13},"likes":{"uri":"/users/87109003/likes","options":["GET"],"total":79},"membership":{"uri":"/users/87109003/membership/","options":["PATCH"]},"moderated_channels":{"uri":"/users/87109003/channels?filter=moderated","options":["GET"],"total":0},"portfolios":{"uri":"/users/87109003/portfolios","options":["GET"],"total":0},"videos":{"uri":"/users/87109003/videos","options":["GET"],"total":10},"shared":{"uri":"/users/87109003/shared/videos","options":["GET"],"total":1},"pictures":{"uri":"/users/87109003/pictures","options":["GET","POST"],"total":1},"folders_root":{"uri":"/users/87109003/folders/root","options":["GET"]},"teams":{"uri":"/users/87109003/teams","options":["GET"],"total":1}},"interactions":{"follow":{"added":false,"added_time":null,"uri":"/users/127307985/following/87109003","options":["GET","PUT","DELETE"]},"block":{"uri":"/me/block/87109003","options":["PUT","DELETE"],"added":false,"added_time":null},"report":{"uri":"/users/87109003/report","options":["POST"],"reason":["inappropriate avatar","spammy","bad videos","creepy","not playing nice","impersonation","inappropriate job post"]}}}
/// location_details : {"formatted_address":"Sydney, Australia","latitude":null,"longitude":null,"city":null,"state":null,"neighborhood":null,"sub_locality":null,"state_iso_code":null,"country":null,"country_iso_code":null}
/// skills : []
/// available_for_hire : false
/// can_work_remotely : false
/// resource_key : "29b44169d4e33c19f88025a9f43111e205e7eb91"
/// account : "plus"

class User {
  String? uri;
  String? name;
  String? link;
  Capabilities? capabilities;
  String? location;
  String? gender;
  String? bio;
  String? shortBio;
  String? createdTime;
  Pictures? pictures;
  List<Websites>? websites;
  Metadata? metadata;
  Location_details? locationDetails;
  List<dynamic>? skills;
  bool? availableForHire;
  bool? canWorkRemotely;
  String? resourceKey;
  String? account;

  User({
      this.uri, 
      this.name, 
      this.link, 
      this.capabilities, 
      this.location, 
      this.gender, 
      this.bio, 
      this.shortBio, 
      this.createdTime, 
      this.pictures, 
      this.websites, 
      this.metadata, 
      this.locationDetails, 
      this.skills, 
      this.availableForHire, 
      this.canWorkRemotely, 
      this.resourceKey, 
      this.account});

  User.fromJson(dynamic json) {
    uri = json['uri'];
    name = json['name'];
    link = json['link'];
    capabilities = json['capabilities'] != null ? Capabilities.fromJson(json['capabilities']) : null;
    location = json['location'];
    gender = json['gender'];
    bio = json['bio'];
    shortBio = json['short_bio'];
    createdTime = json['created_time'];
    pictures = json['pictures'] != null ? Pictures.fromJson(json['pictures']) : null;
    if (json['websites'] != null) {
      websites = [];
      json['websites'].forEach((v) {
        websites?.add(Websites.fromJson(v));
      });
    }
    metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    locationDetails = json['location_details'] != null ? Location_details.fromJson(json['locationDetails']) : null;
    if (json['skills'] != null) {
      skills = [];
      json['skills'].forEach((v) {
        skills?.add(dynamic.fromJson(v));
      });
    }
    availableForHire = json['available_for_hire'];
    canWorkRemotely = json['can_work_remotely'];
    resourceKey = json['resource_key'];
    account = json['account'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['uri'] = uri;
    map['name'] = name;
    map['link'] = link;
    if (capabilities != null) {
      map['capabilities'] = capabilities?.toJson();
    }
    map['location'] = location;
    map['gender'] = gender;
    map['bio'] = bio;
    map['short_bio'] = shortBio;
    map['created_time'] = createdTime;
    if (pictures != null) {
      map['pictures'] = pictures?.toJson();
    }
    if (websites != null) {
      map['websites'] = websites?.map((v) => v.toJson()).toList();
    }
    if (metadata != null) {
      map['metadata'] = metadata?.toJson();
    }
    if (locationDetails != null) {
      map['location_details'] = locationDetails?.toJson();
    }
    if (skills != null) {
      map['skills'] = skills?.map((v) => v.toJson()).toList();
    }
    map['available_for_hire'] = availableForHire;
    map['can_work_remotely'] = canWorkRemotely;
    map['resource_key'] = resourceKey;
    map['account'] = account;
    return map;
  }

}