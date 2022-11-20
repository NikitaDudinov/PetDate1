class User {
  final String name;
  final int id;
  final String email;
  final String telephone;

  User({
    required this.name,
    required this.id,
    required this.email,
    required this.telephone,
  });

  static User fromJson(dynamic json) {
    return User(
        name: json['login'],
        id: json['id'],
        email: json['email'],
        telephone: json['password']);
  }

  @override
  String toString(){
    return '$id\n$name\n$email\n$telephone';
  }
}
