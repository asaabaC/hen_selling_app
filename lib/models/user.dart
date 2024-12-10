class UserProfile {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String address;

  UserProfile({required this.id, required this.name, required this.email, required this.phoneNumber, required this.address});

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'phoneNumber': phoneNumber,
    'address': address,
  };
}
