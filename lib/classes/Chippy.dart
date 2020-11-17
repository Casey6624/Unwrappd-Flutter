class Chippy {
  final int priceRange;
  final String name, timings, thumb;
  final List<dynamic> highlights;
  final Map<String, dynamic> location;

  // https://stackoverflow.com/questions/57508596/flutter-json-array-of-objects

  Chippy(
      {this.priceRange,
      this.name,
      this.timings,
      this.thumb,
      this.highlights,
      this.location});

  factory Chippy.fromJson(Map<String, dynamic> json) {
    return Chippy(
      priceRange: json['price_range'],
      name: json['name'],
      timings: json['timings'],
      thumb: json['thumb'],
      highlights: json['highlights'],
      location: json['location'],
    );
  }
}

/* class Location {
  final String address;
  final String city;
  Location({this.address, this.city});
}
 */
