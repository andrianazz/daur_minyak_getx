import 'package:daur_minyak_getx/app/data/entities/Bank.dart';
import 'package:daur_minyak_getx/app/data/entities/address.dart';

class User {
  String? uid;
  String? name;
  String? email;
  String? phone;
  String? pin;
  String? imageUrl;
  List<Bank>? banks;
  List<Address>? address;
  Map<String, dynamic>? image;
  bool? verified;
  int? balance;

  User({
    this.uid,
    this.name,
    this.email,
    this.phone,
    this.pin,
    this.imageUrl,
    this.banks,
    this.address,
    this.image,
    this.verified,
    this.balance,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        uid: json['uid'] ?? "",
        name: json['name'] ?? "",
        email: json['email'] ?? "",
        phone: json['phone'] ?? "",
        pin: json['pin'] ?? "",
        imageUrl: json['imageUrl'] ?? "",
        banks: json['banks'] != null
            ? List<Bank>.from(json['banks'].map((x) => Bank.fromJson(x)))
            : [],
        address: json['address'] != null
            ? List<Address>.from(
                json['address'].map((x) => Address.fromJson(x)))
            : [],
        image: json['image'] ?? {},
        verified: json['verified'] ?? false,
        balance: json['balance'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'name': name,
        'email': email,
        'phone': phone,
        'pin': pin,
        'imageUrl': imageUrl,
        'banks': banks != null
            ? List<dynamic>.from(banks!.map((x) => x.toJson()))
            : [],
        'address': address != null
            ? List<dynamic>.from(address!.map((x) => x.toJson()))
            : [],
        'image': image,
        'verified': verified,
        'balance': balance,
      };
}
