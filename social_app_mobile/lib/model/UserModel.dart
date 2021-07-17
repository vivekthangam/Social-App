class UserModel {
  String id;
  String username;
  String email;
  List<dynamic> roles;
  String accessToken;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    roles = json['roles'];
    accessToken = json['accessToken'];
  }
}
