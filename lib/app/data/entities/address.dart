class Address {
  String? id;
  String? street;
  String? latitude;
  String? longitude;
  String? postcode;

  Address({
    this.id,
    this.street,
    this.latitude,
    this.longitude,
    this.postcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json['id'] ?? "",
        street: json['street'] ?? "",
        latitude: json['latitude'] ?? "",
        longitude: json['longitude'] ?? "",
        postcode: json['postcode'] ?? "",
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'street': street,
        'latitude': latitude,
        'longitude': longitude,
        'postcode': postcode,
      };
}
