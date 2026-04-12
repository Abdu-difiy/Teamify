import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenStorage {
  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _prefs;

  TokenStorage(this._secureStorage, this._prefs);

  static const _tokenKey = "auth_token";
  static const _onboardingKey = "onboarding_seen";
  static const _roleKey = "user_role";

  // --- التعامل مع البيانات الحساسة (Secure Storage) ---
  
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  Future<void> clearToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }

  // --- التعامل مع إعدادات التطبيق (SharedPreferences) ---
  // ملاحظة: قمت بتحويل الـ Onboarding لـ SharedPreferences لأنه أسرع ولا يتطلب تشفير

  Future<void> saveOnboardingSeen() async {
    await _prefs.setBool(_onboardingKey, true);
  }

  bool isOnboardingSeen() {
    return _prefs.getBool(_onboardingKey) ?? false;
  }

  Future<void> saveUserRole(String role) async {
    await _prefs.setString(_roleKey, role);
  }

  Future<String?> getUserRole() async {
    return _prefs.getString(_roleKey);
  }

  // مسح شامل
  Future<void> resetFlow() async {
    await _secureStorage.deleteAll();
    await _prefs.clear();
  }

  Future<void> saveUserName(String name) async {
  await _secureStorage.write(key: 'user_name', value: name);
}

Future<String?> getUserName() async {
  return await _secureStorage.read(key: 'user_name');
}
}