/// formatted_address : "Sydney, Australia"
/// latitude : null
/// longitude : null
/// city : null
/// state : null
/// neighborhood : null
/// sub_locality : null
/// state_iso_code : null
/// country : null
/// country_iso_code : null

class Location_details {
  String? formattedAddress;
  dynamic? latitude;
  dynamic? longitude;
  dynamic? city;
  dynamic? state;
  dynamic? neighborhood;
  dynamic? subLocality;
  dynamic? stateIsoCode;
  dynamic? country;
  dynamic? countryIsoCode;

  Location_details({
      this.formattedAddress, 
      this.latitude, 
      this.longitude, 
      this.city, 
      this.state, 
      this.neighborhood, 
      this.subLocality, 
      this.stateIsoCode, 
      this.country, 
      this.countryIsoCode});

  Location_details.fromJson(dynamic json) {
    formattedAddress = json['formatted_address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    city = json['city'];
    state = json['state'];
    neighborhood = json['neighborhood'];
    subLocality = json['sub_locality'];
    stateIsoCode = json['state_iso_code'];
    country = json['country'];
    countryIsoCode = json['country_iso_code'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['formatted_address'] = formattedAddress;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['city'] = city;
    map['state'] = state;
    map['neighborhood'] = neighborhood;
    map['sub_locality'] = subLocality;
    map['state_iso_code'] = stateIsoCode;
    map['country'] = country;
    map['country_iso_code'] = countryIsoCode;
    return map;
  }

}