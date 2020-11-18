class Chippy {
  Location location;
  List<String> highlights;
  String sId;
  String name;
  String timings;
  String thumb;
  String id;
  int priceRange;
  String createdAt;
  String updatedAt;
  int iV;

  Chippy(
      {this.location,
      this.highlights,
      this.sId,
      this.name,
      this.timings,
      this.thumb,
      this.priceRange,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.id});

  Chippy.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    highlights = json['highlights'].cast<String>();
    sId = json['_id'];
    name = json['name'];
    timings = json['timings'];
    thumb = json['thumb'];
    priceRange = json['price_range'];
    id = json["id"];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    data['highlights'] = this.highlights;
    data['_id'] = this.sId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['timings'] = this.timings;
    data['thumb'] = this.thumb;
    data['price_range'] = this.priceRange;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Location {
  String address;
  String city;
  String locality;

  Location({this.address, this.city, this.locality});

  Location.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    locality = json['locality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['city'] = this.city;
    data['locality'] = this.locality;
    return data;
  }
}
