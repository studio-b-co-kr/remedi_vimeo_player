import 'albums.dart';
import 'appearances.dart';
import 'channels.dart';
import 'feed.dart';
import 'followers.dart';
import 'following.dart';
import 'groups.dart';
import 'likes.dart';
import 'membership.dart';
import 'moderated_channels.dart';
import 'portfolios.dart';
import 'videos.dart';
import 'shared.dart';
import 'pictures.dart';
import 'folders_root.dart';
import 'teams.dart';

/// albums : {"uri":"/users/87109003/albums","options":["GET"],"total":4}
/// appearances : {"uri":"/users/87109003/appearances","options":["GET"],"total":0}
/// channels : {"uri":"/users/87109003/channels","options":["GET"],"total":3}
/// feed : {"uri":"/users/87109003/feed","options":["GET"]}
/// followers : {"uri":"/users/87109003/followers","options":["GET"],"total":1317}
/// following : {"uri":"/users/87109003/following","options":["GET"],"total":44}
/// groups : {"uri":"/users/87109003/groups","options":["GET"],"total":13}
/// likes : {"uri":"/users/87109003/likes","options":["GET"],"total":79}
/// membership : {"uri":"/users/87109003/membership/","options":["PATCH"]}
/// moderated_channels : {"uri":"/users/87109003/channels?filter=moderated","options":["GET"],"total":0}
/// portfolios : {"uri":"/users/87109003/portfolios","options":["GET"],"total":0}
/// videos : {"uri":"/users/87109003/videos","options":["GET"],"total":10}
/// shared : {"uri":"/users/87109003/shared/videos","options":["GET"],"total":1}
/// pictures : {"uri":"/users/87109003/pictures","options":["GET","POST"],"total":1}
/// folders_root : {"uri":"/users/87109003/folders/root","options":["GET"]}
/// teams : {"uri":"/users/87109003/teams","options":["GET"],"total":1}

class Connections {
  Albums? albums;
  Appearances? appearances;
  Channels? channels;
  Feed? feed;
  Followers? followers;
  Following? following;
  Groups? groups;
  Likes? likes;
  Membership? membership;
  Moderated_channels? moderatedChannels;
  Portfolios? portfolios;
  Videos? videos;
  Shared? shared;
  Pictures? pictures;
  Folders_root? foldersRoot;
  Teams? teams;

  Connections({
      this.albums, 
      this.appearances, 
      this.channels, 
      this.feed, 
      this.followers, 
      this.following, 
      this.groups, 
      this.likes, 
      this.membership, 
      this.moderatedChannels, 
      this.portfolios, 
      this.videos, 
      this.shared, 
      this.pictures, 
      this.foldersRoot, 
      this.teams});

  Connections.fromJson(dynamic json) {
    albums = json['albums'] != null ? Albums.fromJson(json['albums']) : null;
    appearances = json['appearances'] != null ? Appearances.fromJson(json['appearances']) : null;
    channels = json['channels'] != null ? Channels.fromJson(json['channels']) : null;
    feed = json['feed'] != null ? Feed.fromJson(json['feed']) : null;
    followers = json['followers'] != null ? Followers.fromJson(json['followers']) : null;
    following = json['following'] != null ? Following.fromJson(json['following']) : null;
    groups = json['groups'] != null ? Groups.fromJson(json['groups']) : null;
    likes = json['likes'] != null ? Likes.fromJson(json['likes']) : null;
    membership = json['membership'] != null ? Membership.fromJson(json['membership']) : null;
    moderatedChannels = json['moderated_channels'] != null ? Moderated_channels.fromJson(json['moderatedChannels']) : null;
    portfolios = json['portfolios'] != null ? Portfolios.fromJson(json['portfolios']) : null;
    videos = json['videos'] != null ? Videos.fromJson(json['videos']) : null;
    shared = json['shared'] != null ? Shared.fromJson(json['shared']) : null;
    pictures = json['pictures'] != null ? Pictures.fromJson(json['pictures']) : null;
    foldersRoot = json['folders_root'] != null ? Folders_root.fromJson(json['foldersRoot']) : null;
    teams = json['teams'] != null ? Teams.fromJson(json['teams']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (albums != null) {
      map['albums'] = albums?.toJson();
    }
    if (appearances != null) {
      map['appearances'] = appearances?.toJson();
    }
    if (channels != null) {
      map['channels'] = channels?.toJson();
    }
    if (feed != null) {
      map['feed'] = feed?.toJson();
    }
    if (followers != null) {
      map['followers'] = followers?.toJson();
    }
    if (following != null) {
      map['following'] = following?.toJson();
    }
    if (groups != null) {
      map['groups'] = groups?.toJson();
    }
    if (likes != null) {
      map['likes'] = likes?.toJson();
    }
    if (membership != null) {
      map['membership'] = membership?.toJson();
    }
    if (moderatedChannels != null) {
      map['moderated_channels'] = moderatedChannels?.toJson();
    }
    if (portfolios != null) {
      map['portfolios'] = portfolios?.toJson();
    }
    if (videos != null) {
      map['videos'] = videos?.toJson();
    }
    if (shared != null) {
      map['shared'] = shared?.toJson();
    }
    if (pictures != null) {
      map['pictures'] = pictures?.toJson();
    }
    if (foldersRoot != null) {
      map['folders_root'] = foldersRoot?.toJson();
    }
    if (teams != null) {
      map['teams'] = teams?.toJson();
    }
    return map;
  }

}