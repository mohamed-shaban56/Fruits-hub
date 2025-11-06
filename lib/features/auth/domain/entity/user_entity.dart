class UserEntity {
  final String name;
  final String email;
  final String ?uid;

  UserEntity({required this.name, required this.email, this.uid});
  factory UserEntity.fromjson(dynamic json)
  {
    return UserEntity(name: json['name'], email: json['email']);
  }
  toMap(){
    return {
      'name':name,
      'email':email,
      'uid':uid
    
    };
    
  }
}