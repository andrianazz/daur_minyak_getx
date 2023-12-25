class Bank {
  String? id;
  String? name;
  String? imageUrl;
  int? balance;

  Bank({
    this.id,
    this.name,
    this.imageUrl,
    this.balance,
  });

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        id: json['id'] ?? "",
        name: json['name'] ?? "",
        imageUrl: json['imageUrl'] ?? "",
        balance: json['balance'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'imageUrl': imageUrl,
        'balance': balance,
      };
}
