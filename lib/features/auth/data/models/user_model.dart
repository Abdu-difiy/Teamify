import '../../domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    required super.token,
  });

 factory UserModel.fromJson(Map<String, dynamic> json) {
  return UserModel(
    // تأكد أن الأسماء (Keys) تطابق ما سيرسله لك الـ Backend
    id: json['id'] ?? 0,
    name: json['name'] ?? "Unknown",
    email: json['email'] ?? "",
    role: json['role'] ?? "user",
    token: json['token'] ?? "", // أهم جزء عشان الـ Authenticated requests
  );
}

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "role": role,
      "token": token,
    };
  }
}