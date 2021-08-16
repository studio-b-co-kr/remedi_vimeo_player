/// status : "complete"
/// link : null
/// upload_link : null
/// complete_uri : null
/// form : null
/// approach : null
/// size : null
/// redirect_url : null

class Upload {
  String? status;
  dynamic? link;
  dynamic? uploadLink;
  dynamic? completeUri;
  dynamic? form;
  dynamic? approach;
  dynamic? size;
  dynamic? redirectUrl;

  Upload({
      this.status, 
      this.link, 
      this.uploadLink, 
      this.completeUri, 
      this.form, 
      this.approach, 
      this.size, 
      this.redirectUrl});

  Upload.fromJson(dynamic json) {
    status = json['status'];
    link = json['link'];
    uploadLink = json['upload_link'];
    completeUri = json['complete_uri'];
    form = json['form'];
    approach = json['approach'];
    size = json['size'];
    redirectUrl = json['redirect_url'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = status;
    map['link'] = link;
    map['upload_link'] = uploadLink;
    map['complete_uri'] = completeUri;
    map['form'] = form;
    map['approach'] = approach;
    map['size'] = size;
    map['redirect_url'] = redirectUrl;
    return map;
  }

}